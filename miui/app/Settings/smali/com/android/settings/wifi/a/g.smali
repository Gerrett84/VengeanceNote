.class Lcom/android/settings/wifi/a/g;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field final synthetic Bs:Lcom/android/settings/wifi/a/b;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/settings/wifi/a/g;->Bs:Lcom/android/settings/wifi/a/b;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .parameter

    .prologue
    .line 456
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method
