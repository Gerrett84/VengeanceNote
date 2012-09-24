.class Lcom/android/settings/aL;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettings.java"


# instance fields
.field final synthetic og:Lcom/android/settings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/settings/aL;->og:Lcom/android/settings/DateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/settings/aL;->og:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/settings/aL;->og:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/DateTimeSettings;->l(Landroid/content/Context;)V

    .line 414
    :cond_0
    return-void
.end method
