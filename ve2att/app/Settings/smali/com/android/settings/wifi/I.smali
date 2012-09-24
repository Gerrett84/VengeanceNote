.class Lcom/android/settings/wifi/I;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic AK:Lcom/android/settings/wifi/Y;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/Y;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings/wifi/I;->AK:Lcom/android/settings/wifi/Y;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/wifi/I;->AK:Lcom/android/settings/wifi/Y;

    iget-object v0, v0, Lcom/android/settings/wifi/Y;->zL:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->b(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 178
    return-void
.end method
