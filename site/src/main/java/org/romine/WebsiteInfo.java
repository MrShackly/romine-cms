package org.romine;

import org.hippoecm.hst.configuration.channel.ChannelInfo;
import org.hippoecm.hst.core.parameters.DropDownList;
import org.hippoecm.hst.core.parameters.FieldGroup;
import org.hippoecm.hst.core.parameters.FieldGroupList;
import org.hippoecm.hst.core.parameters.JcrPath;
import org.hippoecm.hst.core.parameters.Parameter;

@FieldGroupList({
	@FieldGroup(
			titleKey = "fields.channel",
			value = {"homePageBackground", "homePageTitle", "homePageSubTitle", "pageTitlePrefix"}
			)
	})
public interface WebsiteInfo extends ChannelInfo {	
	@Parameter(name = "homePageBackground")
	@JcrPath(
		pickerSelectableNodeTypes = {"hippogallery:imageset"},
		pickerInitialPath = "/content/gallery/"
		)
	String getLogoPath();

	@Parameter(name = "pageTitlePrefix", defaultValue = "")
	String getPageTitlePrefix();
	
	@Parameter(name = "homePageTitle", defaultValue = "")
	String getHomePageTitle();
	
	@Parameter(name = "homePageSubTitle", defaultValue = "")
	String getHomePageSubTitle();
//
//	@Parameter(name = "color", defaultValue = "blue")
//	@DropDownList({ "red", "green", "blue" })
//	String getColor();
}
