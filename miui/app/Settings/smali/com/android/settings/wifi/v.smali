.class Lcom/android/settings/wifi/v;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic sl:Lcom/android/settings/wifi/X;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/X;)V
    .locals 0
    .parameter

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/settings/wifi/v;->sl:Lcom/android/settings/wifi/X;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/settings/wifi/v;->sl:Lcom/android/settings/wifi/X;

    invoke-virtual {v0}, Lcom/android/settings/wifi/X;->ln()V

    .line 929
    return-void
.end method
