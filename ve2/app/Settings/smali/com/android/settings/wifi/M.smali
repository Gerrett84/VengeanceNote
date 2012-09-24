.class Lcom/android/settings/wifi/M;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Is:Lcom/android/settings/wifi/o;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/o;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/wifi/M;->Is:Lcom/android/settings/wifi/o;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    const-string v1, "network_id"

    iget-object v2, p0, Lcom/android/settings/wifi/M;->Is:Lcom/android/settings/wifi/o;

    invoke-static {v2}, Lcom/android/settings/wifi/o;->a(Lcom/android/settings/wifi/o;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/android/settings/wifi/M;->Is:Lcom/android/settings/wifi/o;

    invoke-virtual {v1}, Lcom/android/settings/wifi/o;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 78
    return-void
.end method
