.class public Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;
.super Ljava/lang/Object;
.source "GalleryCloudUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/GalleryCloudUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveToCloudDB"
.end annotation


# instance fields
.field public dateTaken:J

.field public fileName:Ljava/lang/String;

.field public groupId:I

.field public height:I

.field public location:Landroid/location/Location;

.field public mimeType:Ljava/lang/String;

.field public orientation:I

.field public path:Ljava/lang/String;

.field public serverType:I

.field public size:J

.field public title:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIILandroid/location/Location;II)V
    .locals 0
    .parameter "path"
    .parameter "size"
    .parameter "mimeType"
    .parameter "title"
    .parameter "fileName"
    .parameter "dateTaken"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"
    .parameter "location"
    .parameter "groupId"
    .parameter "serverType"

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    .line 119
    iput-wide p2, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->size:J

    .line 120
    iput-object p4, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->mimeType:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->title:Ljava/lang/String;

    .line 122
    iput-object p6, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->fileName:Ljava/lang/String;

    .line 123
    iput-wide p7, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->dateTaken:J

    .line 124
    iput p9, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->width:I

    .line 125
    iput p10, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->height:I

    .line 126
    iput p11, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->orientation:I

    .line 127
    iput-object p12, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->location:Landroid/location/Location;

    .line 128
    iput p13, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->groupId:I

    .line 129
    iput p14, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->serverType:I

    .line 130
    return-void
.end method
