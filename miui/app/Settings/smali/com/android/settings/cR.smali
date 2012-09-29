.class Lcom/android/settings/cR;
.super Ljava/lang/Object;
.source "MiuiDeviceInfoSettings.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic dE:Lcom/android/settings/MiuiDeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/settings/cR;->dE:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 281
    const-string v0, "cpu[0-9]{1}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
