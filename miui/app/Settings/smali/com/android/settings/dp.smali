.class Lcom/android/settings/dp;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bb:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 948
    iput-object p1, p0, Lcom/android/settings/dp;->bb:Lcom/android/settings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 951
    const-string v3, "phone"

    const-string v4, "toggle %s: currently %s"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v0, "persist.radio.ramdump"

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/android/settings/dp;->bb:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->D(Lcom/android/settings/RadioInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    :goto_0
    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/android/settings/dp;->bb:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->F(Lcom/android/settings/RadioInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 954
    :goto_1
    const-string v1, "persist.radio.ramdump"

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/android/settings/dp;->bb:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->G(Lcom/android/settings/RadioInfo;)V

    .line 956
    return-void

    .line 951
    :cond_0
    const-string v0, "off"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 953
    goto :goto_1

    .line 954
    :cond_2
    const-string v0, "0"

    goto :goto_2
.end method
