.class public Lcom/android/settings/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# instance fields
.field private DX:Landroid/widget/Button;

.field private DY:Landroid/view/View$OnClickListener;

.field private Ed:Z

.field private oc:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings/aZ;

    invoke-direct {v0, p0}, Lcom/android/settings/aZ;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->DY:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MasterClearConfirm;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->Ed:Z

    return v0
.end method

.method private iS()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->oc:Landroid/view/View;

    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->DX:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->DX:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->DY:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->Ed:Z

    .line 94
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    const v0, 0x7f040043

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->oc:Landroid/view/View;

    .line 84
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->iS()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->oc:Landroid/view/View;

    return-object v0
.end method
