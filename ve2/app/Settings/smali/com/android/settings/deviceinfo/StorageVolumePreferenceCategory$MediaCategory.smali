.class Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;
.super Ljava/lang/Object;
.source "StorageVolumePreferenceCategory.java"


# instance fields
.field final wW:[Ljava/lang/String;

.field final wX:I


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->wX:I

    .line 97
    array-length v1, p2

    .line 98
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->wW:[Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 100
    aget-object v2, p2, v0

    .line 101
    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->wW:[Ljava/lang/String;

    aput-object v2, v3, v0

    .line 104
    sget-object v3, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->nU:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method
