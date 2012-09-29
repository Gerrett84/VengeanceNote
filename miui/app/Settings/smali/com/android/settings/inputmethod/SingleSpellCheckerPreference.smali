.class public Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;
.super Landroid/preference/Preference;
.source "SingleSpellCheckerPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private Kl:Landroid/widget/RadioButton;

.field private final M:Landroid/content/res/Resources;

.field private final MA:Landroid/view/textservice/SpellCheckerInfo;

.field private final MB:Lcom/android/settings/inputmethod/SpellCheckersSettings;

.field private final MC:Landroid/view/textservice/TextServicesManager;

.field private MD:Landroid/view/View;

.field private ME:Landroid/view/View;

.field private MF:Landroid/view/View;

.field private MG:Landroid/widget/ImageView;

.field private MH:Z

.field private gb:Landroid/content/Intent;

.field private ge:Landroid/app/AlertDialog;

.field private gg:Landroid/widget/TextView;

.field private gh:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
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

    .line 62
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, v2, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ge:Landroid/app/AlertDialog;

    .line 63
    iput-object p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MB:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .line 64
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->M:Landroid/content/res/Resources;

    .line 65
    iput-object p4, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MC:Landroid/view/textservice/TextServicesManager;

    .line 66
    const v0, 0x7f04005f

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->setLayoutResource(I)V

    .line 67
    iput-object p3, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MA:Landroid/view/textservice/SpellCheckerInfo;

    .line 68
    iput-boolean v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MH:Z

    .line 69
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MA:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->gb:Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->gb:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MA:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->gb:Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/TextServicesManager;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MC:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->f(Landroid/view/View;)V

    return-void
.end method

.method private ac(Z)V
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MD:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->Kl:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 123
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ad(Z)V

    .line 125
    :cond_0
    return-void
.end method

.method private ad(Z)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    const v1, 0x3ecccccd

    .line 193
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MF:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->gb:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MF:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MG:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MA:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MG:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    :cond_1
    :goto_1
    return-void

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MF:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MF:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MF:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 200
    if-nez p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MF:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MG:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MG:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MG:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 212
    if-nez p1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MG:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MA:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->g(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->h(Landroid/view/View;)V

    return-void
.end method

.method private f(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MB:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 114
    return-void
.end method

.method private g(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ge:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ge:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ge:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 136
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MB:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    const v1, 0x7f0b0425

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 138
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MA:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v3

    .line 139
    add-int/lit8 v1, v3, 0x1

    new-array v4, v1, [Ljava/lang/CharSequence;

    .line 140
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->M:Landroid/content/res/Resources;

    const v5, 0x7f0b046c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    move v1, v0

    .line 141
    :goto_0
    if-ge v1, v3, :cond_1

    .line 142
    iget-object v5, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MA:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v5, v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v5

    .line 143
    iget-object v6, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MB:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v6}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MA:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MA:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 146
    add-int/lit8 v6, v1, 0x1

    aput-object v5, v4, v6

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MC:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1, v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v5

    .line 152
    if-eqz v5, :cond_2

    move v1, v0

    .line 153
    :goto_1
    if-ge v1, v3, :cond_2

    .line 154
    iget-object v6, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MA:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v6, v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 155
    add-int/lit8 v0, v1, 0x1

    .line 160
    :cond_2
    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$4;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$4;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v2, v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ge:Landroid/app/AlertDialog;

    .line 177
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ge:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 178
    return-void

    .line 153
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private h(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 181
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MB:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->gb:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MB:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->gb:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MB:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    const v1, 0x7f0b0434

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MA:Landroid/view/textservice/SpellCheckerInfo;

    iget-object v5, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MB:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v5}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MB:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public lI()Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MA:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 81
    const v0, 0x7f0800e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MD:Landroid/view/View;

    .line 82
    const v0, 0x7f0800eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->Kl:Landroid/widget/RadioButton;

    .line 83
    const v0, 0x7f0800ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ME:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ME:Landroid/view/View;

    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$1;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->gg:Landroid/widget/TextView;

    .line 92
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->gh:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0800ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MG:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MG:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f0800ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MF:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MF:Landroid/view/View;

    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$3;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$3;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MH:Z

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ac(Z)V

    .line 110
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->MH:Z

    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->ac(Z)V

    .line 130
    return-void
.end method
