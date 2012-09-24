.class public Lcom/android/settings/deviceinfo/LockDeviceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockDeviceReceiver.java"


# instance fields
.field private eH:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 128
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 129
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 130
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 131
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->al()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const-string v3, "lockscreen.password_salt"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private al()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->eH:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 138
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->eH:Lcom/android/internal/widget/ILockSettings;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->eH:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 122
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 124
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v3, "miui.intent.action.LOCK_DEVICE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 51
    const-string v0, "android.intent.extra.lock_password"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v1, "android.intent.extra.device_token"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 55
    :try_start_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 57
    invoke-direct {p0, p1, v1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->al()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/widget/ILockSettings;->setLockPassword([BI)V

    .line 59
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->al()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->al()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v1, "lockscreen.password_type_alternate"

    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraSettings$Secure;->FIND_DEVICE_PIN_LOCK:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 68
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->e(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    :cond_3
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "LOADED"

    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 72
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 76
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lmiui/provider/ExtraSettings$Secure;->PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 81
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 84
    invoke-virtual {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 86
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->al()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v3, "lock_pattern_autolock"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->al()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v3, "lockscreen.password_type"

    const-wide/32 v4, 0x10000

    const/4 v6, 0x0

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 91
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->e(Landroid/content/Context;)V

    .line 102
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraSettings$Secure;->PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String;

    if-eqz v0, :cond_7

    :goto_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 89
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_2

    .line 92
    :cond_5
    if-ne v4, v1, :cond_6

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 93
    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 95
    :try_start_2
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->al()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v3, "lock_pattern_autolock"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V

    .line 96
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->al()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v3, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 99
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->e(Landroid/content/Context;)V

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v1, v2

    .line 102
    goto :goto_4

    .line 106
    :cond_8
    const-string v1, "com.xiaomi.action.FIND_DEVICE_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, ""

    .line 108
    const-string v1, "find_device_enabled"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 109
    if-eqz v1, :cond_9

    .line 110
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 111
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_9
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 97
    :catch_1
    move-exception v0

    goto :goto_5

    .line 62
    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method
