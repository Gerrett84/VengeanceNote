.class public Lcom/android/settings/inputmethod/InputMethodPreference;
.super Landroid/preference/CheckBoxPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fW:Lcom/android/settings/SettingsPreferenceFragment;

.field private final fX:Landroid/view/inputmethod/InputMethodInfo;

.field private final fY:Landroid/content/Intent;

.field private final fZ:Z

.field private final ga:Z

.field private gb:Landroid/app/AlertDialog;

.field private gc:Landroid/widget/ImageView;

.field private gd:Landroid/widget/TextView;

.field private ge:Landroid/widget/TextView;

.field private gf:Landroid/view/View;

.field private final gg:Landroid/view/View$OnClickListener;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f001a

    invoke-direct {p0, v0, v2, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gb:Landroid/app/AlertDialog;

    .line 66
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$1;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gg:Landroid/view/View$OnClickListener;

    .line 87
    const v0, 0x7f040059

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setLayoutResource(I)V

    .line 88
    const v0, 0x7f04005a

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    .line 89
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    .line 90
    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fY:Landroid/content/Intent;

    .line 91
    iput-object p3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 92
    iput-object p4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fX:Landroid/view/inputmethod/InputMethodInfo;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->aJ()V

    .line 94
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p4, v0, p5}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fZ:Z

    .line 96
    invoke-static {p4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->ga:Z

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fZ:Z

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setEnabled(Z)V

    .line 100
    :cond_0
    return-void
.end method

.method private a(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 254
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gb:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gb:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gb:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 257
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$6;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/inputmethod/InputMethodPreference$6;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$5;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$5;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gb:Landroid/app/AlertDialog;

    .line 275
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gb:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0430

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v6}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gb:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 279
    return-void
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/InputMethodPreference;Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/InputMethodPreference;->a(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings/inputmethod/InputMethodPreference;)V

    return-void
.end method

.method public static a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 201
    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 203
    const/4 v3, 0x1

    .line 208
    :goto_0
    return v3

    .line 205
    :cond_0
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/InputMethodPreference;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->ga:Z

    return v0
.end method

.method private aH()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gc:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gc:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gc:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 175
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gc:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 176
    if-nez v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gc:Landroid/widget/ImageView;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gd:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gd:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->ge:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->ge:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gf:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 187
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gf:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 188
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gf:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v1

    .line 190
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gf:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gg:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    if-nez v1, :cond_3

    .line 192
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gf:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 195
    :cond_3
    return-void

    .line 190
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aK()V
    .locals 5

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 296
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fX:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/SettingsPreferenceFragment;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fY:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/android/settings/inputmethod/InputMethodPreference;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 284
    iget-object v0, p1, Lcom/android/settings/inputmethod/InputMethodPreference;->fX:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settings/inputmethod/InputMethodPreference;->fX:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 287
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 241
    if-eqz p2, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->aK()V

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->aJ()V

    .line 245
    return-void
.end method

.method public aI()Ljava/lang/String;
    .locals 6

    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fX:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 217
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v3}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fX:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fX:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 221
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aJ()V
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->aI()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    check-cast p1, Lcom/android/settings/inputmethod/InputMethodPreference;

    check-cast p2, Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/InputMethodPreference;->a(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/android/settings/inputmethod/InputMethodPreference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 104
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 105
    const v0, 0x7f0800e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gf:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gf:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gg:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v0, 0x7f0800e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gc:Landroid/widget/ImageView;

    .line 108
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gd:Landroid/widget/TextView;

    .line 109
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->ge:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fX:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    if-le v0, v1, :cond_3

    move v0, v1

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fX:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 112
    if-eqz v0, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gf:Landroid/view/View;

    new-instance v3, Lcom/android/settings/inputmethod/InputMethodPreference$2;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference$2;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fY:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gc:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/settings/inputmethod/InputMethodPreference$3;

    invoke-direct {v3, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$3;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_1
    if-eqz v0, :cond_2

    .line 145
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodPreference$4;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference$4;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gc:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->fY:Landroid/content/Intent;

    if-nez v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->gc:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    :goto_1
    return-void

    .line 110
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->aH()V

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->a(ZZ)V

    .line 250
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->aH()V

    .line 168
    return-void
.end method
