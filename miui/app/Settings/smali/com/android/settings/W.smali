.class Lcom/android/settings/W;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic eI:Lcom/android/settings/Settings;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings/W;->eI:Lcom/android/settings/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/W;->eI:Lcom/android/settings/Settings;

    iget-object v1, p0, Lcom/android/settings/W;->eI:Lcom/android/settings/Settings;

    invoke-static {v1}, Lcom/android/settings/Settings;->a(Lcom/android/settings/Settings;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/Settings;->a(Lcom/android/settings/Settings;Ljava/lang/String;)V

    .line 180
    return-void
.end method
