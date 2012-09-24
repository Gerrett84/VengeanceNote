.class Lcom/android/settings/q;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# instance fields
.field final synthetic aX:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/q;->aX:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/q;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->b(Lcom/android/settings/RadioInfo;Z)Z

    .line 174
    iget-object v0, p0, Lcom/android/settings/q;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->g(Lcom/android/settings/RadioInfo;)V

    .line 175
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/q;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 163
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/q;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->e(Lcom/android/settings/RadioInfo;)V

    .line 158
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/q;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/q;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->b(Lcom/android/settings/RadioInfo;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/q;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->c(Lcom/android/settings/RadioInfo;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/q;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->d(Lcom/android/settings/RadioInfo;)V

    .line 153
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/q;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Z)Z

    .line 168
    iget-object v0, p0, Lcom/android/settings/q;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->f(Lcom/android/settings/RadioInfo;)V

    .line 169
    return-void
.end method
