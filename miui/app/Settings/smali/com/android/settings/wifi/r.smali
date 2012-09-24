.class Lcom/android/settings/wifi/r;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic mr:Lcom/android/settings/wifi/A;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/A;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/settings/wifi/r;->mr:Lcom/android/settings/wifi/A;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 237
    const v0, 0x7f08024c

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/wifi/r;->mr:Lcom/android/settings/wifi/A;

    iget-object v0, v0, Lcom/android/settings/wifi/A;->cx:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/WifiSettings;I)V

    .line 239
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
