.class Lcom/android/settings/wifi/a/a;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field final synthetic nY:Lcom/android/settings/wifi/a/c;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings/wifi/a/a;->nY:Lcom/android/settings/wifi/a/c;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .parameter

    .prologue
    .line 206
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method
