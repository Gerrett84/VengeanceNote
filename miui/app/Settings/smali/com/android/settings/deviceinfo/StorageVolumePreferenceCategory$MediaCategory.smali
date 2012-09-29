.class Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;
.super Ljava/lang/Object;
.source "StorageVolumePreferenceCategory.java"


# instance fields
.field final zQ:[Ljava/lang/String;

.field final zR:I


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->zR:I

    .line 107
    array-length v1, p2

    .line 108
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->zQ:[Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 110
    aget-object v2, p2, v0

    .line 111
    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->zQ:[Ljava/lang/String;

    aput-object v2, v3, v0

    .line 114
    sget-object v3, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pJ:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method
