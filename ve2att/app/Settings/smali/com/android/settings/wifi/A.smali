.class Lcom/android/settings/wifi/A;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic cx:Lcom/android/settings/wifi/WifiSettings;

.field final synthetic uY:Landroid/view/LayoutInflater;

.field final synthetic uZ:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Landroid/view/LayoutInflater;Landroid/widget/ImageButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/settings/wifi/A;->cx:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/A;->uY:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/settings/wifi/A;->uZ:Landroid/widget/ImageButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/A;->cx:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/settings/wifi/A;->uY:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/A;->uZ:Landroid/widget/ImageButton;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 233
    const v1, 0x7f100004

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 234
    new-instance v1, Lcom/android/settings/wifi/r;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/r;-><init>(Lcom/android/settings/wifi/A;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 244
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 246
    :cond_0
    return-void
.end method
