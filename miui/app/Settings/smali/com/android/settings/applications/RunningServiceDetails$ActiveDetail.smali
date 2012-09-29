.class Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Gi:Lcom/android/settings/applications/RunningServiceDetails;

.field Mo:Landroid/widget/Button;

.field Mp:Lcom/android/settings/applications/RunningState$ServiceItem;

.field Mq:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

.field Mr:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

.field Ms:Landroid/app/PendingIntent;

.field mRootView:Landroid/view/View;

.field rV:Landroid/widget/Button;

.field se:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method ab(Z)V
    .locals 3
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mp:Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 91
    if-nez p1, :cond_0

    .line 92
    iget-object v1, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->Na:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->MZ:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-static {v1, v0}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V

    .line 110
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->MZ:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 98
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails;->cM:Lcom/android/settings/applications/RunningState$MergedItem;

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails;->dd:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->iB()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {v0}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningServiceDetails;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningServiceDetails;->de:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails;->cM:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails;->dd:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->iB()V

    .line 106
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {v0}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningServiceDetails;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails;->dd:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->iB()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->rV:Landroid/widget/Button;

    if-ne p1, v3, :cond_6

    .line 114
    new-instance v3, Landroid/app/ApplicationErrorReport;

    invoke-direct {v3}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 115
    const/4 v4, 0x5

    iput v4, v3, Landroid/app/ApplicationErrorReport;->type:I

    .line 116
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mp:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$ServiceItem;->Na:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 117
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->se:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 118
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mp:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$ServiceItem;->MZ:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/ApplicationErrorReport;->time:J

    .line 120
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mp:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$ServiceItem;->Na:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    :goto_0
    iput-boolean v0, v3, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 122
    new-instance v4, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-direct {v4}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mq:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->gz:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-ltz v0, :cond_3

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mq:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-wide v5, v5, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->gz:J

    sub-long/2addr v0, v5

    iput-wide v0, v4, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    .line 129
    :goto_1
    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mp:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->Na:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mp:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->Na:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "service_dump.txt"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 134
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :try_start_1
    const-string v0, "activity"

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "-a"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "service"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v7, v8}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c

    .line 140
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 144
    :cond_0
    :goto_2
    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 145
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v0, v7

    new-array v0, v0, [B

    .line 146
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 147
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v4, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    .line 151
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 153
    :cond_1
    :goto_3
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 154
    const-string v0, "RunningServicesDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-object v4, v3, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APP_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->se:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 158
    const-string v1, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/RunningServiceDetails;->startActivity(Landroid/content/Intent;)V

    .line 188
    :goto_4
    return-void

    :cond_2
    move v0, v1

    .line 120
    goto/16 :goto_0

    .line 127
    :cond_3
    const-wide/16 v0, -0x1

    iput-wide v0, v4, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    goto/16 :goto_1

    .line 137
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 138
    :goto_5
    :try_start_6
    const-string v7, "RunningServicesDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t dump service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 140
    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_6
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_4
    :goto_7
    throw v0

    .line 148
    :catch_2
    move-exception v0

    .line 149
    :goto_8
    :try_start_9
    const-string v1, "RunningServicesDetails"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t read service dump: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 151
    if-eqz v2, :cond_1

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    :goto_9
    if-eqz v2, :cond_5

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    :cond_5
    :goto_a
    throw v0

    .line 164
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Ms:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    .line 166
    :try_start_c
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Ms:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x1008

    const/high16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_c
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_4

    .line 170
    :catch_4
    move-exception v0

    .line 171
    const-string v1, "RunningServicesDetails"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 172
    :catch_5
    move-exception v0

    .line 173
    const-string v1, "RunningServicesDetails"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 174
    :catch_6
    move-exception v0

    .line 175
    const-string v1, "RunningServicesDetails"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 177
    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mp:Lcom/android/settings/applications/RunningState$ServiceItem;

    if-eqz v0, :cond_8

    .line 178
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->ab(Z)V

    goto/16 :goto_4

    .line 179
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mq:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->gx:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->IA:Z

    if-eqz v0, :cond_9

    .line 181
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails;->tf:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mq:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->gx:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$BaseItem;->Iu:Landroid/content/pm/PackageItemInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {v0}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningServiceDetails;)V

    goto/16 :goto_4

    .line 185
    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails;->tf:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mq:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->gx:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$BaseItem;->Iu:Landroid/content/pm/PackageItemInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {v0}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningServiceDetails;)V

    goto/16 :goto_4

    .line 140
    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v1

    goto/16 :goto_7

    .line 151
    :catch_9
    move-exception v0

    goto/16 :goto_3

    :catch_a
    move-exception v1

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_9

    .line 148
    :catch_b
    move-exception v0

    move-object v2, v1

    goto/16 :goto_8

    .line 140
    :catchall_3
    move-exception v0

    goto/16 :goto_6

    .line 137
    :catch_c
    move-exception v0

    goto/16 :goto_5
.end method
