.class public Lorg/telegram/ui/Telehgram/Premium;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Premium.java"


# static fields
.field static final RC_REQUEST:I = 0x2711

.field static final SKU_PREMIUM:Ljava/lang/String; = "tellgram"

.field static final TAG:Ljava/lang/String; = "savedPremium"


# instance fields
.field final KEY:Ljava/lang/String;

.field private PACKAGENAME:Ljava/lang/String;

.field Tex1:Landroid/widget/TextView;

.field Tex2:Landroid/widget/TextView;

.field Tex3:Landroid/widget/TextView;

.field Tex4:Landroid/widget/TextView;

.field actionBar:Landroid/support/v7/app/ActionBar;

.field btn2:Landroid/widget/Button;

.field public dialog:Landroid/app/ProgressDialog;

.field private mAlertDialog:Lorg/telegram/ui/Telehgram/AppAlertDialog;

.field mGotInventoryListener:Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;

.field mHelper:Lorg/telegram/util/IabHelper;

.field mPurchaseFinishedListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

.field private payload:Ljava/lang/String;

.field preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/Premium;->preferences:Landroid/content/SharedPreferences;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/Premium;->PACKAGENAME:Ljava/lang/String;

    .line 51
    const-string v0, "PERIMIUM"

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/Premium;->KEY:Ljava/lang/String;

    .line 150
    new-instance v0, Lorg/telegram/ui/Telehgram/Premium$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Telehgram/Premium$2;-><init>(Lorg/telegram/ui/Telehgram/Premium;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/Premium;->mGotInventoryListener:Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;

    .line 201
    new-instance v0, Lorg/telegram/ui/Telehgram/Premium$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Telehgram/Premium$3;-><init>(Lorg/telegram/ui/Telehgram/Premium;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/Premium;->mPurchaseFinishedListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/Premium;Lorg/telegram/util/Purchase;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/Premium;
    .param p1, "x1"    # Lorg/telegram/util/Purchase;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Premium;->sendPurchaseToServer(Lorg/telegram/util/Purchase;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Telehgram/Premium;)Lorg/telegram/ui/Telehgram/AppAlertDialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/Premium;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium;->mAlertDialog:Lorg/telegram/ui/Telehgram/AppAlertDialog;

    return-object v0
.end method

.method private sendPurchaseToServer(Lorg/telegram/util/Purchase;)V
    .registers 4
    .param p1, "purchase"    # Lorg/telegram/util/Purchase;

    .prologue
    .line 231
    invoke-static {p1}, Lorg/telegram/util/PurchaseData;->getInsertParam(Lorg/telegram/util/Purchase;)Ljava/util/HashMap;

    move-result-object v0

    .line 232
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lorg/telegram/ui/Telehgram/Premium$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Telehgram/Premium$4;-><init>(Lorg/telegram/ui/Telehgram/Premium;)V

    invoke-static {p0, v0, v1}, Lorg/telegram/util/PurchaseData;->insertPurchase(Landroid/content/Context;Ljava/util/HashMap;Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;)V

    .line 272
    return-void
.end method


# virtual methods
.method alert(Ljava/lang/String;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 309
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 310
    .local v0, "bld":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 311
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    const-string v1, "savedPremium"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing alert dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 315
    return-void
.end method

.method complain(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 304
    const-string v0, "savedPremium"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** testbilling Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/Premium;->alert(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 185
    const-string v0, "savedPremium"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium;->mHelper:Lorg/telegram/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 188
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 193
    :goto_3a
    return-void

    .line 190
    :cond_3b
    const-string v0, "savedPremium"

    const-string v1, "onActivityResult handled by IABUtil."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 319
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 320
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/Premium;->finish()V

    .line 321
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v3, 0x7f030047

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Telehgram/Premium;->setContentView(I)V

    .line 80
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Telehgram/Premium;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 82
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lorg/telegram/util/DeviceUtils;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->payload:Ljava/lang/String;

    .line 83
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 84
    .local v1, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/Premium;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 85
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->actionBar:Landroid/support/v7/app/ActionBar;

    const-string v4, "Premium"

    const v5, 0x7f070787

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v3, 0x5

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileBackColorForId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 87
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v3, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v3, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 91
    const v3, 0x7f0e013b

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Telehgram/Premium;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->btn2:Landroid/widget/Button;

    .line 92
    const v3, 0x7f0e0133

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Telehgram/Premium;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->Tex1:Landroid/widget/TextView;

    .line 93
    const v3, 0x7f0e0135

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Telehgram/Premium;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->Tex2:Landroid/widget/TextView;

    .line 94
    const v3, 0x7f0e0137

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Telehgram/Premium;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->Tex3:Landroid/widget/TextView;

    .line 95
    const v3, 0x7f0e0139

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Telehgram/Premium;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->Tex4:Landroid/widget/TextView;

    .line 99
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->btn2:Landroid/widget/Button;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->Tex1:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->Tex2:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->Tex3:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->Tex4:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    new-instance v3, Lorg/telegram/ui/Telehgram/AppAlertDialog;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/AppAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->mAlertDialog:Lorg/telegram/ui/Telehgram/AppAlertDialog;

    .line 107
    const-string v3, "com.farsitel.bazaar"

    invoke-static {p0, v3}, Lorg/telegram/ui/Membergram/util/PackageUtil;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 109
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->PACKAGENAME:Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Lorg/telegram/ui/Telehgram/Premium;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->preferences:Landroid/content/SharedPreferences;

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->PACKAGENAME:Ljava/lang/String;

    .line 111
    const-string v3, "TAG"

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/Premium;->PACKAGENAME:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "ISPRE"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lorg/telegram/ui/LaunchActivity;->mIsUprade:Z

    .line 114
    sget-boolean v3, Lorg/telegram/ui/LaunchActivity;->mIsUprade:Z

    if-ne v3, v7, :cond_f2

    .line 115
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/Premium;->updateUi()V

    .line 147
    :goto_f1
    return-void

    .line 119
    :cond_f2
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->dialog:Landroid/app/ProgressDialog;

    .line 120
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->dialog:Landroid/app/ProgressDialog;

    const-string v4, "\u0644\u0637\u0641\u0627 \u0634\u06a9\u06cc\u0628\u0627 \u0628\u0627\u0634\u06cc\u062f..."

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 122
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setInverseBackgroundForced(Z)V

    .line 123
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 129
    const-string v0, "MIHNMA0GCSqGSIb3DQEBAQUAA4G7ADCBtwKBrwDdPHeVcl4Z9cGgofB0xXSeTDP9s3pxozcm/z4xBXWwg+oN+1f2N6Yf71CVbMdtY7Wxz7fUAkVjZGm8plghM3U+8BZNZbNqsEFzaQrz0JMxlFnhC8WkrKnU2Yr3zRlgkZfDxxfFG5EZ6AaZMtGVe809dOy7h6PwkyZubQ+Og90BnAlGgsfOMXiT0HmyTfv9gPPuqp/NmDdVRRv+3wpreg5mqcADfYq6ZthSeFaRagsCAwEAAQ=="

    .line 132
    .local v0, "base64EncodedPublicKey":Ljava/lang/String;
    new-instance v3, Lorg/telegram/util/IabHelper;

    invoke-direct {v3, p0, v0}, Lorg/telegram/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->mHelper:Lorg/telegram/util/IabHelper;

    .line 133
    const-string v3, "savedPremium"

    const-string v4, "Starting setup."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/Premium;->mHelper:Lorg/telegram/util/IabHelper;

    new-instance v4, Lorg/telegram/ui/Telehgram/Premium$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Telehgram/Premium$1;-><init>(Lorg/telegram/ui/Telehgram/Premium;)V

    invoke-virtual {v3, v4}, Lorg/telegram/util/IabHelper;->startSetup(Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;)V

    goto :goto_f1

    .line 144
    .end local v0    # "base64EncodedPublicKey":Ljava/lang/String;
    :cond_12a
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/Premium;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070842

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    const-string v5, "\u0628\u0627\u0632\u0627\u0631"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 145
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/Premium;->finish()V

    goto :goto_f1
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 276
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 278
    const-string v0, "savedPremium"

    const-string v1, "Destroying helper."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium;->mHelper:Lorg/telegram/util/IabHelper;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium;->mHelper:Lorg/telegram/util/IabHelper;

    invoke-virtual {v0}, Lorg/telegram/util/IabHelper;->dispose()V

    .line 280
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/Premium;->mHelper:Lorg/telegram/util/IabHelper;

    .line 281
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 323
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 329
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 325
    :pswitch_c
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/Premium;->finish()V

    .line 326
    const/4 v0, 0x1

    goto :goto_b

    .line 323
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 72
    const-string v0, "Telehgram permium Fragment"

    invoke-static {v0}, Lorg/telegram/ui/Membergram/analytics/AnalyticsEventUtil;->sendScreenName(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onSavedUpgradeAppButtonClicked(Landroid/view/View;)V
    .registers 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 174
    const-string v0, "savedPremium"

    const-string v1, "Upgrade button clicked; launching purchase flow for upgrade."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/Premium;->setWaitScreen(Z)V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium;->mHelper:Lorg/telegram/util/IabHelper;

    const-string v2, "tellgram"

    const/16 v3, 0x2711

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/Premium;->mPurchaseFinishedListener:Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/Premium;->payload:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method setWaitScreen(Z)V
    .registers 2
    .param p1, "set"    # Z

    .prologue
    .line 301
    return-void
.end method

.method public updateUi()V
    .registers 5

    .prologue
    .line 284
    sget-boolean v1, Lorg/telegram/ui/LaunchActivity;->mIsUprade:Z

    if-eqz v1, :cond_44

    .line 285
    const v1, 0x7f0e013b

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Telehgram/Premium;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget-boolean v1, Lorg/telegram/ui/LaunchActivity;->mIsUprade:Z

    if-eqz v1, :cond_45

    const v1, 0x7f02008a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 286
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/Premium;->btn2:Landroid/widget/Button;

    const-string v2, "\u0634\u0645\u0627 \u0645\u0634\u062a\u0631\u06a9 \u0648\u06cc\u0698\u0647  \u0647\u0633\u062a\u06cc\u062f"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/Premium;->btn2:Landroid/widget/Button;

    new-instance v2, Lorg/telegram/ui/Telehgram/Premium$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Telehgram/Premium$5;-><init>(Lorg/telegram/ui/Telehgram/Premium;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 294
    .local v0, "newtask":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ISPRE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 297
    .end local v0    # "newtask":Landroid/content/SharedPreferences$Editor;
    :cond_44
    return-void

    .line 285
    :cond_45
    const/4 v1, 0x0

    goto :goto_16
.end method

.method verifyDeveloperPayload(Lorg/telegram/util/Purchase;)Z
    .registers 3
    .param p1, "p"    # Lorg/telegram/util/Purchase;

    .prologue
    .line 196
    invoke-virtual {p1}, Lorg/telegram/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/Premium;->payload:Ljava/lang/String;

    .line 198
    const/4 v0, 0x1

    return v0
.end method
