.class Lcom/android/settings/accounts/MiuiManageAccountsSettings$1;
.super Ljava/lang/Object;
.source "MiuiManageAccountsSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic Er:Lcom/android/settings/accounts/MiuiManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$1;->Er:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-static {p2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$1;->Er:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->cY()V

    .line 121
    return-void
.end method
