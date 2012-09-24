.class Lcom/android/settings/cS;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# instance fields
.field private FA:Landroid/widget/TextView;

.field private FB:Landroid/widget/CheckBox;

.field private Fz:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dJ;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/settings/cS;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/cS;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/settings/cS;->FB:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/cS;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings/cS;->Fz:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/cS;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/settings/cS;->Fz:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/cS;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings/cS;->FA:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/cS;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/settings/cS;->FA:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcom/android/settings/cS;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings/cS;->FB:Landroid/widget/CheckBox;

    return-object v0
.end method
