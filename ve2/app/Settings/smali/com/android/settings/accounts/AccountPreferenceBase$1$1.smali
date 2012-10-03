.class Lcom/android/settings/accounts/AccountPreferenceBase$1$1;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dZ:Lcom/android/settings/accounts/AccountPreferenceBase$1;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountPreferenceBase$1;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase$1$1;->dZ:Lcom/android/settings/accounts/AccountPreferenceBase$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase$1$1;->dZ:Lcom/android/settings/accounts/AccountPreferenceBase$1;

    iget-object v0, v0, Lcom/android/settings/accounts/AccountPreferenceBase$1;->oa:Lcom/android/settings/accounts/AccountPreferenceBase;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountPreferenceBase;->dg()V

    .line 114
    return-void
.end method
