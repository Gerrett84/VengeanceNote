.class Lcom/android/settings/display/e;
.super Ljava/lang/Object;
.source "ScreenTimeoutDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic IB:Lcom/android/settings/display/ScreenTimeoutDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/display/e;->IB:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/display/e;->IB:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->finish()V

    .line 91
    return-void
.end method
