.class Lcom/android/settings/ed;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic Kc:Lcom/android/settings/TrustedCredentialsSettings;

.field final synthetic Pz:Lcom/android/settings/dw;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/dw;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/ed;->Kc:Lcom/android/settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings/ed;->Pz:Lcom/android/settings/dw;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/ed;->Kc:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings/ed;->Pz:Lcom/android/settings/dw;

    invoke-virtual {v1, p3}, Lcom/android/settings/dw;->aS(I)Lcom/android/settings/as;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/as;)V

    .line 171
    return-void
.end method
