.class Lcom/android/settings/cE;
.super Ljava/lang/Object;
.source "MiuiDeviceInfoSettings.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic CX:Lcom/android/settings/MiuiDeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/settings/cE;->CX:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 239
    const-string v0, "cpu[0-9]{1}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
