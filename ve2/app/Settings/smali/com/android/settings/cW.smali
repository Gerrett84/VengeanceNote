.class Lcom/android/settings/cW;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic aX:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 859
    iput-object p1, p0, Lcom/android/settings/cW;->aX:Lcom/android/settings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 861
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 862
    iget-object v1, p0, Lcom/android/settings/cW;->aX:Lcom/android/settings/RadioInfo;

    const-class v2, Lcom/android/settings/BandMode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 863
    iget-object v1, p0, Lcom/android/settings/cW;->aX:Lcom/android/settings/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/android/settings/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 864
    const/4 v0, 0x1

    return v0
.end method
