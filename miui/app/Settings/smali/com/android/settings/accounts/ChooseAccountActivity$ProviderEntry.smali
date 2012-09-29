.class Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final Ad:Ljava/lang/CharSequence;

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->Ad:Ljava/lang/CharSequence;

    .line 71
    iput-object p2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic b(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->Ad:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)I
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->Ad:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 76
    const/4 v0, -0x1

    .line 81
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->Ad:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->Ad:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->Ad:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    check-cast p1, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->a(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)I

    move-result v0

    return v0
.end method
