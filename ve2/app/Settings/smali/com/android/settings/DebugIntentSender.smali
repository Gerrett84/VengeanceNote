.class public Lcom/android/settings/DebugIntentSender;
.super Landroid/app/Activity;
.source "DebugIntentSender.java"


# instance fields
.field private nF:Landroid/widget/EditText;

.field private nG:Landroid/widget/EditText;

.field private nH:Landroid/widget/EditText;

.field private nI:Landroid/widget/EditText;

.field private nJ:Landroid/widget/Button;

.field private nK:Landroid/widget/Button;

.field private nL:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Lcom/android/settings/b;

    invoke-direct {v0, p0}, Lcom/android/settings/b;-><init>(Lcom/android/settings/DebugIntentSender;)V

    iput-object v0, p0, Lcom/android/settings/DebugIntentSender;->nL:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/DebugIntentSender;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->nJ:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/DebugIntentSender;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->nK:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->nF:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->nG:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->nH:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->nI:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f040037

    invoke-virtual {p0, v0}, Lcom/android/settings/DebugIntentSender;->setContentView(I)V

    .line 72
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/android/settings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/DebugIntentSender;->nF:Landroid/widget/EditText;

    .line 73
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->nF:Landroid/widget/EditText;

    const-string v1, "android.intent.action.SYNC"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->nF:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 76
    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/android/settings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/DebugIntentSender;->nG:Landroid/widget/EditText;

    .line 77
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->nG:Landroid/widget/EditText;

    const v1, 0x1080018

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 79
    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/android/settings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/DebugIntentSender;->nH:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/android/settings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/DebugIntentSender;->nI:Landroid/widget/EditText;

    .line 82
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/android/settings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/DebugIntentSender;->nJ:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->nJ:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/DebugIntentSender;->nL:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/android/settings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/DebugIntentSender;->nK:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->nK:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/DebugIntentSender;->nL:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method
