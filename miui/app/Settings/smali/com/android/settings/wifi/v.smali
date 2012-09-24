.class Lcom/android/settings/wifi/v;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic si:Lcom/android/settings/wifi/W;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/W;)V
    .locals 0
    .parameter

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/settings/wifi/v;->si:Lcom/android/settings/wifi/W;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/settings/wifi/v;->si:Lcom/android/settings/wifi/W;

    invoke-virtual {v0}, Lcom/android/settings/wifi/W;->lj()V

    .line 929
    return-void
.end method
