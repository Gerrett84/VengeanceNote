.class Lcom/android/settings/deviceinfo/Status$2;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# instance fields
.field final synthetic Oe:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$2;->Oe:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$2;->Oe:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->d(Lcom/android/settings/deviceinfo/Status;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$2;->Oe:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->e(Lcom/android/settings/deviceinfo/Status;)V

    .line 180
    return-void
.end method
