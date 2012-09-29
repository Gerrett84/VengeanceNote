.class Lcom/android/settings/wifi/Q;
.super Ljava/lang/Object;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Ko:Lcom/android/settings/wifi/WifiAPITest;

.field final synthetic Kp:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/wifi/Q;->Ko:Lcom/android/settings/wifi/WifiAPITest;

    iput-object p2, p0, Lcom/android/settings/wifi/Q;->Kp:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/Q;->Kp:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/android/settings/wifi/Q;->Ko:Lcom/android/settings/wifi/WifiAPITest;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiAPITest;->a(Lcom/android/settings/wifi/WifiAPITest;I)I

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/Q;->Ko:Lcom/android/settings/wifi/WifiAPITest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiAPITest;->b(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/Q;->Ko:Lcom/android/settings/wifi/WifiAPITest;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiAPITest;->a(Lcom/android/settings/wifi/WifiAPITest;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 140
    return-void
.end method
