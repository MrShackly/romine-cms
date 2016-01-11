package org.romine.components;

import org.hippoecm.hst.component.support.bean.BaseHstComponent;
import org.hippoecm.hst.content.beans.query.HstQuery;
import org.hippoecm.hst.content.beans.query.HstQueryResult;
import org.hippoecm.hst.content.beans.query.exceptions.QueryException;
import org.hippoecm.hst.content.beans.standard.HippoBean;
import org.hippoecm.hst.core.component.HstComponentException;
import org.hippoecm.hst.core.component.HstRequest;
import org.hippoecm.hst.core.component.HstResponse;
import org.hippoecm.hst.core.parameters.JcrPath;
import org.hippoecm.hst.core.parameters.Parameter;
import org.hippoecm.hst.core.parameters.ParametersInfo;
import org.romine.beans.BaseDocument;
import org.romine.beans.BaseRomineDocument;

@ParametersInfo(type = LatestContentComponent.Info.class)
public class LatestContentComponent extends BaseHstComponent {
	@Override
	public void doBeforeRender(HstRequest request, HstResponse response) throws HstComponentException {
		// TODO Auto-generated method stub
		super.doBeforeRender(request, response);
		Info info = getComponentParametersInfo(request);
		String relativePathToFolderX = info.getPickerPath();
		// the scope, aka the folder, to search news items below
		
		HippoBean scope = request.getRequestContext().getSiteContentBaseBean();
		if(relativePathToFolderX != null && !"".equals(relativePathToFolderX)){
			scope = scope.getBean(relativePathToFolderX);
		}
		try {
			HstQuery hstQuery = request.getRequestContext().getQueryManager().createQuery(scope, BaseRomineDocument.class, true);
			hstQuery.setLimit(info.getHowMany());
			hstQuery.addOrderByDescending("hippostdpubwf:publicationDate");
			HstQueryResult result = hstQuery.execute();
			
			request.setAttribute("docs", result.getHippoBeans());
			
		} catch (QueryException e) {
			throw new HstComponentException("Exception occured during creation or execution of HstQuery.", e);
		}
		
	}
	
	public interface Info {
		@JcrPath(isRelative = true, pickerSelectableNodeTypes = {"hippostd:folder", "hippostd:directory"})
		@Parameter(name = "pickerPath")
		String getPickerPath();
		
		@Parameter(name = "howMany")
		int getHowMany();
	}
}
