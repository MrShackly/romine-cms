package org.romine.beans;

import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoDocument;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageSet;
import org.hippoecm.hst.content.beans.standard.HippoHtml;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import org.onehippo.cms7.essentials.components.rest.adapters.HippoHtmlAdapter;
import org.onehippo.cms7.essentials.components.rest.adapters.HippoGalleryImageAdapter;

@XmlRootElement(name = "baserominedocument")
@XmlAccessorType(XmlAccessType.NONE)
@HippoEssentialsGenerated(internalName = "rominecms:baseRomineDocument")
@Node(jcrType = "rominecms:baseRomineDocument")
public class BaseRomineDocument extends BaseDocument {
    @XmlElement
    @HippoEssentialsGenerated(internalName = "rominecms:title")
    public String getTitle() {
        return getProperty("rominecms:title");
    }

    @XmlElement
    @HippoEssentialsGenerated(internalName = "rominecms:abstract")
    public String getAbstract() {
        return getProperty("rominecms:abstract");
    }

    @XmlElement
    @HippoEssentialsGenerated(internalName = "rominecms:subTitle")
    public String getSubTitle() {
        return getProperty("rominecms:subTitle");
    }

    @XmlJavaTypeAdapter(HippoGalleryImageAdapter.class)
    @XmlElement
    @HippoEssentialsGenerated(internalName = "rominecms:image")
    public HippoGalleryImageSet getImage() {
        return getLinkedBean("rominecms:image", HippoGalleryImageSet.class);
    }

    @XmlJavaTypeAdapter(HippoHtmlAdapter.class)
    @XmlElement
    @HippoEssentialsGenerated(internalName = "rominecms:content")
    public HippoHtml getContent() {
        return getHippoHtml("rominecms:content");
    }
}
