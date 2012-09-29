.class Lcom/android/settings/cE;
.super Ljava/lang/Object;
.source "SettingsLicenseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Gk:Lcom/android/settings/SettingsLicenseActivity;

.field private aT:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsLicenseActivity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/cE;->Gk:Lcom/android/settings/SettingsLicenseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/android/settings/cE;->aT:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/android/settings/cE;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x800

    const/4 v0, 0x0

    .line 76
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    const/16 v1, 0x800

    :try_start_0
    new-array v4, v1, [C

    .line 83
    iget-object v1, p0, Lcom/android/settings/cE;->aT:Ljava/lang/String;

    const-string v5, ".gz"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/settings/cE;->aT:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 90
    :goto_0
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    if-ltz v5, :cond_4

    .line 91
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :goto_1
    :try_start_2
    const-string v4, "SettingsLicenseActivity.LicenseFileLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "License HTML file not found at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cE;->aT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    const/4 v0, 0x1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 108
    :cond_0
    :goto_2
    if-nez v0, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const-string v0, "SettingsLicenseActivity.LicenseFileLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "License HTML is empty (from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/cE;->aT:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x3

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cE;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 115
    if-nez v0, :cond_2

    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/settings/cE;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void

    .line 87
    :cond_3
    :try_start_4
    new-instance v1, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/settings/cE;->aT:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 101
    :cond_4
    if-eqz v1, :cond_0

    .line 102
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 104
    :catch_2
    move-exception v1

    goto :goto_2

    .line 96
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 97
    :goto_3
    :try_start_6
    const-string v4, "SettingsLicenseActivity.LicenseFileLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading license HTML file at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cE;->aT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 98
    const/4 v0, 0x2

    .line 101
    if-eqz v1, :cond_0

    .line 102
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 104
    :catch_4
    move-exception v1

    goto :goto_2

    .line 100
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 101
    :goto_4
    if-eqz v1, :cond_5

    .line 102
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 105
    :cond_5
    :goto_5
    throw v0

    .line 104
    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_5

    .line 100
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 96
    :catch_7
    move-exception v0

    goto :goto_3
.end method
