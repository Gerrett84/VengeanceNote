.class Lcom/android/settings/dY;
.super Ljava/lang/Object;
.source "MiuiSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic vl:Lcom/android/settings/MiuiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/settings/dY;->vl:Lcom/android/settings/MiuiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/preference/PreferenceActivity$Header;Landroid/preference/PreferenceActivity$Header;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 410
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 407
    check-cast p1, Landroid/preference/PreferenceActivity$Header;

    check-cast p2, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dY;->a(Landroid/preference/PreferenceActivity$Header;Landroid/preference/PreferenceActivity$Header;)I

    move-result v0

    return v0
.end method
