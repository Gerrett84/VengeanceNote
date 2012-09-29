.class Lcom/android/settings/wifi/a/k;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field final synthetic Pe:Lcom/android/settings/wifi/a/d;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings/wifi/a/k;->Pe:Lcom/android/settings/wifi/a/d;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .parameter

    .prologue
    .line 226
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method
