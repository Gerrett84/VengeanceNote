.class Lcom/android/settings/display/f;
.super Ljava/lang/Object;
.source "ScreenTimeoutDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic EM:Lcom/android/settings/display/ScreenTimeoutDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/display/f;->EM:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/display/f;->EM:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-static {v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->a(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/display/f;->EM:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-static {v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->a(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/display/f;->EM:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-virtual {v1}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/display/f;->EM:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->finish()V

    .line 84
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method
