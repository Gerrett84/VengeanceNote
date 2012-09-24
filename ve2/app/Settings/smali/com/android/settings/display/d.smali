.class Lcom/android/settings/display/d;
.super Ljava/lang/Object;
.source "ScreenTimeoutDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic EM:Lcom/android/settings/display/ScreenTimeoutDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/display/d;->EM:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/display/d;->EM:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->finish()V

    .line 98
    return-void
.end method
