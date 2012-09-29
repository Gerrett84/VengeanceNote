.class public Lcom/android/settings/VirusScanActivity;
.super Lcom/android/settings/J;
.source "VirusScanActivity.java"


# static fields
.field private static final oR:[I


# instance fields
.field mList:Landroid/widget/ListView;

.field private final oQ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/VirusScanActivity;->oR:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x52t 0x7t 0xbt 0x7ft
        0x53t 0x7t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/J;-><init>()V

    .line 25
    const/16 v0, 0x111

    iput v0, p0, Lcom/android/settings/VirusScanActivity;->oQ:I

    .line 33
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/settings/VirusScanActivity;->oR:[I

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-static {}, Lcom/android/settings/VirusScanService;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->finish()V

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/J;->onCreate(Landroid/os/Bundle;)V

    .line 134
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/J;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f04008b

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanActivity;->setContentView(I)V

    .line 59
    const v0, 0x7f080187

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    new-instance v1, Lcom/android/settings/de;

    invoke-direct {v1, p0}, Lcom/android/settings/de;-><init>(Lcom/android/settings/VirusScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance v1, Lcom/android/settings/dg;

    invoke-direct {v1, p0}, Lcom/android/settings/dg;-><init>(Lcom/android/settings/VirusScanActivity;)V

    .line 116
    const v0, 0x7f080188

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/VirusScanActivity;->mList:Landroid/widget/ListView;

    .line 117
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/dc;

    invoke-direct {v1, p0}, Lcom/android/settings/dc;-><init>(Lcom/android/settings/VirusScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 150
    const/16 v0, 0x111

    if-ne v0, p1, :cond_0

    .line 151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    const v1, 0x7f0b0751

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 153
    const v1, 0x7f0b0754

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040087

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 157
    new-instance v1, Lcom/android/settings/dd;

    invoke-direct {v1, p0}, Lcom/android/settings/dd;-><init>(Lcom/android/settings/VirusScanActivity;)V

    .line 194
    const v1, 0x7f0b0756

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    const v1, 0x7f0b0757

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 198
    :cond_0
    return-object v3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/android/settings/VirusScanService;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->finish()V

    .line 145
    :cond_0
    invoke-super {p0}, Lcom/android/settings/J;->onResume()V

    .line 146
    return-void
.end method
