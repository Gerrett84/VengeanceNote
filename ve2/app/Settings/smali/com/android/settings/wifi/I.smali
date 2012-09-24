.class Lcom/android/settings/wifi/I;
.super Ljava/lang/Object;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Gu:Lcom/android/settings/wifi/WifiAPITest;

.field final synthetic Gv:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/wifi/I;->Gu:Lcom/android/settings/wifi/WifiAPITest;

    iput-object p2, p0, Lcom/android/settings/wifi/I;->Gv:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/I;->Gv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/android/settings/wifi/I;->Gu:Lcom/android/settings/wifi/WifiAPITest;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiAPITest;->a(Lcom/android/settings/wifi/WifiAPITest;I)I

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/I;->Gu:Lcom/android/settings/wifi/WifiAPITest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiAPITest;->b(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/I;->Gu:Lcom/android/settings/wifi/WifiAPITest;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiAPITest;->a(Lcom/android/settings/wifi/WifiAPITest;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 120
    return-void
.end method
