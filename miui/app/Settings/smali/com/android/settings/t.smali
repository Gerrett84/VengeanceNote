.class Lcom/android/settings/t;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic aV:Landroid/content/ContentResolver;

.field final synthetic aW:Lcom/android/settings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OwnerInfoSettings;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/t;->aW:Lcom/android/settings/OwnerInfoSettings;

    iput-object p2, p0, Lcom/android/settings/t;->aV:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/settings/t;->aV:Landroid/content/ContentResolver;

    const-string v2, "lock_screen_owner_info_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    iget-object v0, p0, Lcom/android/settings/t;->aW:Lcom/android/settings/OwnerInfoSettings;

    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->a(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 59
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
