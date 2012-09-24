.class public Lcom/android/settings/VirusScanAppActivity;
.super Landroid/app/Activity;
.source "VirusScanAppActivity.java"

# interfaces
.implements Lcom/android/settings/aj;


# instance fields
.field OA:Landroid/widget/TextView;

.field OB:Landroid/widget/ImageView;

.field OC:Landroid/widget/LinearLayout;

.field OD:Landroid/widget/Button;

.field OE:Landroid/widget/Button;

.field OF:Z

.field OG:Lcom/android/settings/dC;

.field OH:Landroid/content/ServiceConnection;

.field private OI:I

.field OJ:Lcom/android/settings/N;

.field OK:Landroid/os/Handler;

.field Oy:Landroid/widget/ListView;

.field Oz:Landroid/widget/TextView;

.field ay:Landroid/widget/TextView;

.field wr:Ljava/util/ArrayList;

.field wt:Lcom/android/settings/aV;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/VirusScanAppActivity;->OF:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wr:Ljava/util/ArrayList;

    .line 460
    return-void
.end method

.method static synthetic a(Lcom/android/settings/VirusScanAppActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/android/settings/VirusScanAppActivity;->OI:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/VirusScanAppActivity;->lS()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/VirusScanAppActivity;)Lcom/android/settings/dC;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/VirusScanAppActivity;->lT()Lcom/android/settings/dC;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/VirusScanAppActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/settings/VirusScanAppActivity;->OI:I

    return v0
.end method

.method static synthetic d(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/VirusScanAppActivity;->lU()V

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0b074e

    .line 218
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 219
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f0200db

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 220
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 221
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    const/high16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v3, p1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 235
    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 236
    return-void
.end method

.method private lS()V
    .locals 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    invoke-virtual {v0, p0}, Lcom/android/settings/aV;->a(Lcom/android/settings/aj;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->eg()I

    move-result v1

    .line 92
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 94
    new-instance v2, Lcom/android/settings/M;

    invoke-direct {v2}, Lcom/android/settings/M;-><init>()V

    .line 95
    iget-object v3, p0, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    invoke-virtual {v3, v0}, Lcom/android/settings/aV;->P(I)Lcom/android/settings/dM;

    move-result-object v3

    .line 96
    iget-object v4, v3, Lcom/android/settings/dM;->cT:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/settings/M;->cT:Ljava/lang/String;

    .line 97
    iget-boolean v4, v3, Lcom/android/settings/dM;->mChecked:Z

    iput-boolean v4, v2, Lcom/android/settings/M;->mChecked:Z

    .line 98
    iget-object v3, v3, Lcom/android/settings/dM;->cU:Lcom/android/settings/ScanState;

    iput-object v3, v2, Lcom/android/settings/M;->cU:Lcom/android/settings/ScanState;

    .line 99
    iget-object v3, p0, Lcom/android/settings/VirusScanAppActivity;->wr:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method private lT()Lcom/android/settings/dC;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->eh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Lcom/android/settings/dZ;

    invoke-direct {v0, p0}, Lcom/android/settings/dZ;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    .line 295
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/dC;->fq()V

    .line 297
    return-object v0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->ek()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->wr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 287
    new-instance v0, Lcom/android/settings/dU;

    invoke-direct {v0, p0}, Lcom/android/settings/dU;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->el()I

    move-result v0

    if-nez v0, :cond_2

    .line 290
    new-instance v0, Lcom/android/settings/bO;

    invoke-direct {v0, p0}, Lcom/android/settings/bO;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    goto :goto_0

    .line 292
    :cond_2
    new-instance v0, Lcom/android/settings/bm;

    invoke-direct {v0, p0}, Lcom/android/settings/bm;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    goto :goto_0
.end method

.method private lU()V
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/android/settings/VirusScanAppActivity;->OF:Z

    if-nez v0, :cond_0

    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/VirusScanAppActivity;->OF:Z

    .line 546
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->eo()V

    .line 547
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->ep()V

    .line 548
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OH:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanAppActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/VirusScanAppActivity;->finish()V

    .line 552
    :cond_0
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 567
    if-eqz p2, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/M;

    sget-object v1, Lcom/android/settings/ScanState;->bI:Lcom/android/settings/ScanState;

    iput-object v1, v0, Lcom/android/settings/M;->cU:Lcom/android/settings/ScanState;

    .line 574
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 575
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 576
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 577
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 578
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 579
    const-string v2, "index"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 580
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OK:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 582
    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/M;

    sget-object v1, Lcom/android/settings/ScanState;->bJ:Lcom/android/settings/ScanState;

    iput-object v1, v0, Lcom/android/settings/M;->cU:Lcom/android/settings/ScanState;

    goto :goto_0
.end method

.method public ax()V
    .locals 2

    .prologue
    .line 593
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 594
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 595
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->OK:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 596
    return-void
.end method

.method public ay()V
    .locals 2

    .prologue
    .line 600
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 601
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 602
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->OK:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 603
    return-void
.end method

.method public n(I)V
    .locals 3
    .parameter

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/M;

    sget-object v1, Lcom/android/settings/ScanState;->bH:Lcom/android/settings/ScanState;

    iput-object v1, v0, Lcom/android/settings/M;->cU:Lcom/android/settings/ScanState;

    .line 557
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 558
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 559
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 560
    const-string v2, "index"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 562
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OK:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 563
    return-void
.end method

.method public o(I)V
    .locals 2
    .parameter

    .prologue
    .line 586
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 587
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 588
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->OK:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 589
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 608
    sget-object v0, Lcom/android/settings/VirusScanAppActivity$RunState;->Ek:Lcom/android/settings/VirusScanAppActivity$RunState;

    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->OG:Lcom/android/settings/dC;

    invoke-virtual {v1}, Lcom/android/settings/dC;->fo()Lcom/android/settings/VirusScanAppActivity$RunState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 609
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 610
    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 611
    const v1, 0x7f0b074e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 612
    const v1, 0x7f0b0767

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 613
    const v1, 0x7f0b0756

    new-instance v2, Lcom/android/settings/l;

    invoke-direct {v2, p0}, Lcom/android/settings/l;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 619
    const v1, 0x7f0b0757

    new-instance v2, Lcom/android/settings/k;

    invoke-direct {v2, p0}, Lcom/android/settings/k;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 626
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 631
    :goto_0
    return-void

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/VirusScanAppActivity;->lU()V

    .line 629
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f040088

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanAppActivity;->setContentView(I)V

    .line 109
    new-instance v0, Lcom/android/settings/s;

    invoke-direct {v0, p0}, Lcom/android/settings/s;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    iput-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OH:Landroid/content/ServiceConnection;

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    const-string v1, "com.android.service.VIRUS_SCAN_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->OH:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/VirusScanAppActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 131
    const v0, 0x7f080178

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OC:Landroid/widget/LinearLayout;

    .line 132
    const v0, 0x7f080179

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->Oz:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->ay:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f08017c

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OA:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f08017a

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OB:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f08017f

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OD:Landroid/widget/Button;

    .line 137
    const v0, 0x7f08017e

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OE:Landroid/widget/Button;

    .line 138
    const v0, 0x7f080180

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->Oy:Landroid/widget/ListView;

    .line 140
    new-instance v0, Lcom/android/settings/N;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/N;-><init>(Lcom/android/settings/VirusScanAppActivity;Lcom/android/settings/s;)V

    iput-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OJ:Lcom/android/settings/N;

    .line 141
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->Oy:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->OJ:Lcom/android/settings/N;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OD:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/r;

    invoke-direct {v1, p0}, Lcom/android/settings/r;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OE:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/o;

    invoke-direct {v1, p0}, Lcom/android/settings/o;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-instance v0, Lcom/android/settings/m;

    invoke-direct {v0, p0}, Lcom/android/settings/m;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    iput-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OK:Landroid/os/Handler;

    .line 180
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 214
    invoke-direct {p0}, Lcom/android/settings/VirusScanAppActivity;->lU()V

    .line 215
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/aV;->a(Lcom/android/settings/aj;)V

    .line 206
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/VirusScanAppActivity;->OF:Z

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OG:Lcom/android/settings/dC;

    invoke-virtual {v0}, Lcom/android/settings/dC;->fp()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/VirusScanAppActivity;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 186
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    invoke-virtual {v0, p0}, Lcom/android/settings/aV;->a(Lcom/android/settings/aj;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OG:Lcom/android/settings/dC;

    if-eqz v0, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/android/settings/VirusScanAppActivity;->lS()V

    .line 191
    invoke-direct {p0}, Lcom/android/settings/VirusScanAppActivity;->lT()Lcom/android/settings/dC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->OG:Lcom/android/settings/dC;

    .line 194
    :cond_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 195
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 196
    return-void
.end method
