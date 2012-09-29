.class Lcom/android/settings/aR;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic pm:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings/aR;->pm:Lcom/android/settings/MiuiMasterClear;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
