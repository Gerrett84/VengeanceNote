.class public Lcom/android/settings/DebugIntentSender;
.super Landroid/app/Activity;
.source "DebugIntentSender.java"


# instance fields
.field private pq:Landroid/widget/EditText;

.field private pr:Landroid/widget/EditText;

.field private ps:Landroid/widget/EditText;

.field private pt:Landroid/widget/EditText;

.field private pu:Landroid/widget/Button;

.field private pv:Landroid/widget/Button;

.field private pw:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Lcom/android/settings/d;

    invoke-direct {v0, p0}, Lcom/android/settings/d;-><init>(Lcom/android/settings/DebugIntentSender;)V

    iput-object v0, p0, Lcom/android/settings/DebugIntentSender;->pw:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/DebugIntentSender;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->pu:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/DebugIntentSender;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->pv:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->pq:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->pr:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->ps:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->pt:Landroid/widget/EditText;

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
    const v0, 0x7f040036

    invoke-virtual {p0, v0}, Lcom/android/settings/DebugIntentSender;->setContentView(I)V

    .line 72
    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/android/settings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/DebugIntentSender;->pq:Landroid/widget/EditText;

    .line 73
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->pq:Landroid/widget/EditText;

    const-string v1, "android.intent.action.SYNC"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->pq:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 76
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/android/settings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/DebugIntentSender;->pr:Landroid/widget/EditText;

    .line 77
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->pr:Landroid/widget/EditText;

    const v1, 0x1080018

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 79
    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/android/settings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/DebugIntentSender;->ps:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/android/settings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/DebugIntentSender;->pt:Landroid/widget/EditText;

    .line 82
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/android/settings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/DebugIntentSender;->pu:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->pu:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/DebugIntentSender;->pw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/android/settings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/DebugIntentSender;->pv:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/android/settings/DebugIntentSender;->pv:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/DebugIntentSender;->pw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method
