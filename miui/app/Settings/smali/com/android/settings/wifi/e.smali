.class Lcom/android/settings/wifi/e;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aY:Lcom/android/settings/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings/wifi/e;->aY:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/e;->aY:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->b(Lcom/android/settings/wifi/WifiStatusTest;)V

    .line 177
    return-void
.end method
