.class public Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;
.super Landroid/preference/Preference;
.source "SingleSpellCheckerPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private Gr:Landroid/widget/RadioButton;

.field private final I:Landroid/content/res/Resources;

.field private final IA:Lcom/android/settings/inputmethod/SpellCheckersSettings;

.field private final IB:Landroid/view/textservice/TextServicesManager;

.field private IC:Landroid/view/View;

.field private ID:Landroid/view/View;

.field private IE:Landroid/view/View;

.field private IF:Landroid/widget/ImageView;

.field private IG:Z

.field private final Iz:Landroid/view/textservice/SpellCheckerInfo;

.field private ff:Landroid/content/Intent;

.field private fh:Landroid/app/AlertDialog;

.field private fj:Landroid/widget/TextView;

.field private fk:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/content/Intent;Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/TextServicesManager;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, v2, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->fh:Landroid/app/AlertDialog;

    .line 61
    iput-object p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IA:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .line 62
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->I:Landroid/content/res/Resources;

    .line 63
    iput-object p4, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IB:Landroid/view/textservice/TextServicesManager;

    .line 64
    const v0, 0x7f04005a

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->setLayoutResource(I)V

    .line 65
    iput-object p3, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->Iz:Landroid/view/textservice/SpellCheckerInfo;

    .line 66
    iput-boolean v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IG:Z

    .line 67
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->Iz:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ff:Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ff:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->Iz:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ff:Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/TextServicesManager;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IB:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->e(Landroid/view/View;)V

    return-void
.end method

.method private ag(Z)V
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IC:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->Gr:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ah(Z)V

    .line 123
    :cond_0
    return-void
.end method

.method private ah(Z)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    const v1, 0x3ecccccd

    .line 185
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IE:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ff:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IE:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IF:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->Iz:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IF:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    :cond_1
    :goto_1
    return-void

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IE:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IE:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IE:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 192
    if-nez p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IE:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IF:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IF:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IF:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 204
    if-nez p1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IF:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->Iz:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IA:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ff:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IA:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ff:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->startActivity(Landroid/content/Intent;)V

    .line 182
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->f(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->b(Landroid/view/View;)V

    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IA:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 112
    return-void
.end method

.method private f(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->fh:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->fh:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->fh:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 134
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IA:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    const v1, 0x7f0b03f4

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 136
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->Iz:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v3

    .line 137
    add-int/lit8 v1, v3, 0x1

    new-array v4, v1, [Ljava/lang/CharSequence;

    .line 138
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->I:Landroid/content/res/Resources;

    const v5, 0x7f0b0428

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    move v1, v0

    .line 139
    :goto_0
    if-ge v1, v3, :cond_1

    .line 140
    iget-object v5, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->Iz:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v5, v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v5

    .line 141
    iget-object v6, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IA:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v6}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->Iz:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->Iz:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 144
    add-int/lit8 v6, v1, 0x1

    aput-object v5, v4, v6

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IB:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1, v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v5

    .line 150
    if-eqz v5, :cond_2

    move v1, v0

    .line 151
    :goto_1
    if-ge v1, v3, :cond_2

    .line 152
    iget-object v6, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->Iz:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v6, v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    add-int/lit8 v0, v1, 0x1

    .line 158
    :cond_2
    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$4;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$4;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v2, v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->fh:Landroid/app/AlertDialog;

    .line 175
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->fh:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 176
    return-void

    .line 151
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public je()Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->Iz:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 79
    const v0, 0x7f0800e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IC:Landroid/view/View;

    .line 80
    const v0, 0x7f0800ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->Gr:Landroid/widget/RadioButton;

    .line 81
    const v0, 0x7f0800e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ID:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ID:Landroid/view/View;

    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$1;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->fj:Landroid/widget/TextView;

    .line 90
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->fk:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0800ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IF:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IF:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f0800eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IE:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IE:Landroid/view/View;

    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$3;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$3;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IG:Z

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ag(Z)V

    .line 108
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->IG:Z

    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ag(Z)V

    .line 128
    return-void
.end method
