.class public Lorg/telegram/ui/PaymentFormActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PaymentFormActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PaymentFormActivity$LinkSpan;,
        Lorg/telegram/ui/PaymentFormActivity$LinkMovementMethodMy;,
        Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;,
        Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;
    }
.end annotation


# static fields
.field private static final FIELDS_COUNT_ADDRESS:I = 0xa

.field private static final FIELDS_COUNT_CARD:I = 0x6

.field private static final FIELDS_COUNT_SAVEDCARD:I = 0x2

.field private static final FIELD_CARD:I = 0x0

.field private static final FIELD_CARDNAME:I = 0x2

.field private static final FIELD_CARD_COUNTRY:I = 0x4

.field private static final FIELD_CARD_POSTCODE:I = 0x5

.field private static final FIELD_CITY:I = 0x2

.field private static final FIELD_COUNTRY:I = 0x4

.field private static final FIELD_CVV:I = 0x3

.field private static final FIELD_EMAIL:I = 0x7

.field private static final FIELD_EXPIRE_DATE:I = 0x1

.field private static final FIELD_NAME:I = 0x6

.field private static final FIELD_PHONE:I = 0x9

.field private static final FIELD_PHONECODE:I = 0x8

.field private static final FIELD_POSTCODE:I = 0x5

.field private static final FIELD_SAVEDCARD:I = 0x0

.field private static final FIELD_SAVEDPASSWORD:I = 0x1

.field private static final FIELD_STATE:I = 0x3

.field private static final FIELD_STREET1:I = 0x0

.field private static final FIELD_STREET2:I = 0x1

.field private static final done_button:I = 0x1


# instance fields
.field private bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private canceled:Z

.field private cardName:Ljava/lang/String;

.field private checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

.field private codesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countriesArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countryName:Ljava/lang/String;

.field private currentBotName:Ljava/lang/String;

.field private currentItemName:Ljava/lang/String;

.field private currentStep:I

.field private delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

.field private detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

.field private dividers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneItemAnimation:Landroid/animation/AnimatorSet;

.field private donePressed:Z

.field private headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

.field private ignoreOnCardChange:Z

.field private ignoreOnPhoneChange:Z

.field private ignoreOnTextChange:Z

.field private inputFields:[Landroid/widget/EditText;

.field private linearLayout2:Landroid/widget/LinearLayout;

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private need_card_country:Z

.field private need_card_name:Z

.field private need_card_postcode:Z

.field private passwordOk:Z

.field private payTextView:Landroid/widget/TextView;

.field private paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

.field private paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

.field private paymentJson:Ljava/lang/String;

.field private phoneFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private radioCells:[Lorg/telegram/ui/Cells/RadioCell;

.field private requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

.field private saveCardInfo:Z

.field private saveShippingInfo:Z

.field private scrollView:Landroid/widget/ScrollView;

.field private sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

.field private stripeApiKey:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

.field private webView:Landroid/webkit/WebView;

.field private webviewLoading:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;)V
    .registers 6
    .param p1, "message"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "receipt"    # Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    .prologue
    const/4 v2, 0x3

    .line 259
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    .line 138
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    .line 139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    .line 154
    new-array v1, v2, [Lorg/telegram/ui/Cells/HeaderCell;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    .line 156
    new-array v1, v2, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 158
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 167
    const/4 v1, 0x6

    new-array v1, v1, [Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 260
    const/4 v1, 0x5

    iput v1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    .line 261
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    .line 262
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->bot_id:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->bot_id:I

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    .line 264
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->provider_id:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->provider_id:I

    .line 265
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->users:Ljava/util/ArrayList;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    .line 266
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->shipping:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 267
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 268
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->bot_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 269
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v0, :cond_93

    .line 270
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    .line 274
    :goto_75
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    .line 275
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v1, :cond_8e

    .line 276
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 277
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 279
    :cond_8e
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->credentials_title:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    .line 280
    return-void

    .line 272
    :cond_93
    const-string v1, ""

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    goto :goto_75
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;)V
    .registers 13
    .param p1, "form"    # Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    .param p2, "message"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v1, 0x3

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 282
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    .line 154
    new-array v0, v1, [Lorg/telegram/ui/Cells/HeaderCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    .line 156
    new-array v0, v1, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 167
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 284
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-nez v0, :cond_53

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v0, :cond_53

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v0, :cond_53

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v0, :cond_5f

    .line 285
    :cond_53
    const/4 v3, 0x0

    .local v3, "step":I
    :goto_54
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    .line 301
    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/PaymentFormActivity;->init(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V

    .line 302
    return-void

    .line 286
    .end local v3    # "step":I
    :cond_5f
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v0, :cond_84

    .line 287
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_7c

    .line 288
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->valid_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    if-ge v0, v1, :cond_7c

    .line 289
    sput-object v4, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 290
    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 293
    :cond_7c
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_82

    .line 294
    const/4 v3, 0x4

    .restart local v3    # "step":I
    goto :goto_54

    .line 296
    .end local v3    # "step":I
    :cond_82
    const/4 v3, 0x3

    .restart local v3    # "step":I
    goto :goto_54

    .line 299
    .end local v3    # "step":I
    :cond_84
    const/4 v3, 0x2

    .restart local v3    # "step":I
    goto :goto_54
.end method

.method private constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V
    .registers 12
    .param p1, "form"    # Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    .param p2, "message"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "step"    # I
    .param p4, "validatedRequestedInfo"    # Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    .param p5, "shipping"    # Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    .param p6, "tokenJson"    # Ljava/lang/String;
    .param p7, "card"    # Ljava/lang/String;
    .param p8, "request"    # Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;
    .param p9, "saveCard"    # Z

    .prologue
    const/4 v1, 0x3

    .line 304
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    .line 154
    new-array v0, v1, [Lorg/telegram/ui/Cells/HeaderCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    .line 156
    new-array v0, v1, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 167
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 305
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/PaymentFormActivity;->init(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V

    .line 306
    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/ui/PaymentFormActivity$1;)V
    .registers 11
    .param p1, "x0"    # Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    .param p2, "x1"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    .param p5, "x4"    # Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;
    .param p9, "x8"    # Z
    .param p10, "x9"    # Lorg/telegram/ui/PaymentFormActivity$1;

    .prologue
    .line 111
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PaymentFormActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendCardData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PaymentFormActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->checkPassword()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PaymentFormActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    return v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PaymentFormActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z

    return v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PaymentFormActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PaymentFormActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Cells/TextCheckCell;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    return-object v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(Z)V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PaymentFormActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PaymentFormActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    return v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PaymentFormActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z

    return v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PaymentFormActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    return v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/PaymentFormActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/PaymentFormActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendData()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/PaymentFormActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    return v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/PaymentFormActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/PaymentFormActivity;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/PaymentFormActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Components/ContextProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PaymentFormActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/PaymentFormActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendForm()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/RadioCell;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    return-object v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;)Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;)Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    return-object p1
.end method

.method private checkPassword()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2302
    sget-object v3, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v3, :cond_1c

    .line 2303
    sget-object v3, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->valid_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    add-int/lit8 v4, v4, 0x3c

    if-ge v3, v4, :cond_1c

    .line 2304
    const/4 v3, 0x0

    sput-object v3, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 2305
    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2308
    :cond_1c
    sget-object v3, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v3, :cond_24

    .line 2309
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendData()V

    .line 2391
    :goto_23
    return-void

    .line 2312
    :cond_24
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_49

    .line 2313
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 2314
    .local v2, "v":Landroid/os/Vibrator;
    if-eqz v2, :cond_3f

    .line 2315
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2317
    :cond_3f
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v3, v3, v6

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_23

    .line 2320
    .end local v2    # "v":Landroid/os/Vibrator;
    :cond_49
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2321
    .local v0, "password":Ljava/lang/String;
    invoke-direct {p0, v6}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(Z)V

    .line 2322
    invoke-direct {p0, v6}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 2323
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 2324
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$25;

    invoke-direct {v4, p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity$25;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_23
.end method

.method private getRequestInfo()Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;
    .registers 5

    .prologue
    .line 2198
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;-><init>()V

    .line 2199
    .local v0, "info":Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-eqz v1, :cond_22

    .line 2200
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    .line 2201
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2203
    :cond_22
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v1, :cond_65

    .line 2204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    .line 2205
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2207
    :cond_65
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v1, :cond_82

    .line 2208
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    .line 2209
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2211
    :cond_82
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-eqz v1, :cond_f6

    .line 2212
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_postAddress;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    .line 2213
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    .line 2214
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    .line 2215
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    .line 2216
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    .line 2217
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    if-eqz v1, :cond_f7

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    :goto_dd
    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    .line 2218
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    .line 2219
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2221
    :cond_f6
    return-object v0

    .line 2217
    :cond_f7
    const-string v1, ""

    goto :goto_dd
.end method

.method private getTotalPriceDecimalString(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1731
    .local p1, "prices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;>;"
    const/4 v1, 0x0

    .line 1732
    .local v1, "amount":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 1733
    int-to-long v4, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v2, v4

    long-to-int v1, v2

    .line 1732
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1735
    :cond_16
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    int-to-long v4, v1

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatCurrencyDecimalString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1723
    .local p1, "prices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;>;"
    const/4 v1, 0x0

    .line 1724
    .local v1, "amount":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 1725
    int-to-long v4, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v2, v4

    long-to-int v1, v2

    .line 1724
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1727
    :cond_16
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    int-to-long v4, v1

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private goToNextStep()V
    .registers 15

    .prologue
    .line 1860
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    if-nez v0, :cond_4f

    .line 1862
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flexible:Z

    if-eqz v0, :cond_24

    .line 1863
    const/4 v3, 0x1

    .line 1879
    .local v3, "nextStep":I
    :goto_d
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v9, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1917
    .end local v3    # "nextStep":I
    :cond_23
    :goto_23
    return-void

    .line 1864
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v0, :cond_4d

    .line 1865
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_45

    .line 1866
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->valid_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    if-ge v0, v1, :cond_45

    .line 1867
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 1868
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1871
    :cond_45
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_4b

    .line 1872
    const/4 v3, 0x4

    .restart local v3    # "nextStep":I
    goto :goto_d

    .line 1874
    .end local v3    # "nextStep":I
    :cond_4b
    const/4 v3, 0x3

    .restart local v3    # "nextStep":I
    goto :goto_d

    .line 1877
    .end local v3    # "nextStep":I
    :cond_4d
    const/4 v3, 0x2

    .restart local v3    # "nextStep":I
    goto :goto_d

    .line 1880
    .end local v3    # "nextStep":I
    :cond_4f
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_96

    .line 1882
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v0, :cond_94

    .line 1883
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_75

    .line 1884
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->valid_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    if-ge v0, v1, :cond_75

    .line 1885
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 1886
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1889
    :cond_75
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_92

    .line 1890
    const/4 v3, 0x4

    .line 1897
    .restart local v3    # "nextStep":I
    :goto_7a
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v9, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_23

    .line 1892
    .end local v3    # "nextStep":I
    :cond_92
    const/4 v3, 0x3

    .restart local v3    # "nextStep":I
    goto :goto_7a

    .line 1895
    .end local v3    # "nextStep":I
    :cond_94
    const/4 v3, 0x2

    .restart local v3    # "nextStep":I
    goto :goto_7a

    .line 1898
    .end local v3    # "nextStep":I
    :cond_96
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ca

    .line 1899
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    if-eqz v0, :cond_af

    .line 1900
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-interface {v0, v1, v2, v4}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->didSelectNewCard(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1901
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->finishFragment()V

    goto/16 :goto_23

    .line 1903
    :cond_af
    new-instance v4, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x4

    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v11, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v12, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v13, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-direct/range {v4 .. v13}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V

    invoke-virtual {p0, v4}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_23

    .line 1905
    :cond_ca
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f7

    .line 1907
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    if-eqz v0, :cond_f3

    .line 1908
    const/4 v3, 0x4

    .line 1912
    .restart local v3    # "nextStep":I
    :goto_d4
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v9, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V

    iget-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    if-nez v1, :cond_f5

    const/4 v1, 0x1

    :goto_ee
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_23

    .line 1910
    .end local v3    # "nextStep":I
    :cond_f3
    const/4 v3, 0x2

    .restart local v3    # "nextStep":I
    goto :goto_d4

    .line 1912
    :cond_f5
    const/4 v1, 0x0

    goto :goto_ee

    .line 1913
    .end local v3    # "nextStep":I
    :cond_f7
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_23

    .line 1914
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1915
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->finishFragment()V

    goto/16 :goto_23
.end method

.method private init(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V
    .registers 14
    .param p1, "form"    # Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    .param p2, "message"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "step"    # I
    .param p4, "validatedRequestedInfo"    # Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    .param p5, "shipping"    # Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    .param p6, "tokenJson"    # Ljava/lang/String;
    .param p7, "card"    # Ljava/lang/String;
    .param p8, "request"    # Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;
    .param p9, "saveCard"    # Z

    .prologue
    const/4 v1, 0x1

    .line 313
    iput p3, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    .line 314
    iput-object p6, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    .line 315
    iput-object p4, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    .line 316
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    .line 317
    iput-object p5, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 318
    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 319
    iput-boolean p9, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    .line 320
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->bot_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 321
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v0, :cond_40

    .line 322
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    .line 326
    :goto_23
    iget-object v2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    .line 327
    iput-object p8, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 328
    iput-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    .line 329
    if-eqz p9, :cond_45

    .line 330
    iput-boolean p9, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    .line 334
    :goto_33
    if-nez p7, :cond_50

    .line 335
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v1, :cond_3f

    .line 336
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    .line 341
    :cond_3f
    :goto_3f
    return-void

    .line 324
    :cond_40
    const-string v2, ""

    iput-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    goto :goto_23

    .line 332
    :cond_45
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v2, :cond_4e

    :goto_4b
    iput-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    goto :goto_33

    :cond_4e
    const/4 v1, 0x0

    goto :goto_4b

    .line 339
    :cond_50
    iput-object p7, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    goto :goto_3f
.end method

.method private sendCardData()Z
    .registers 20

    .prologue
    .line 2002
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v2, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    if-nez v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    if-eqz v2, :cond_3e

    .line 2003
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;-><init>()V

    .line 2004
    .local v17, "req":Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->credentials:Z

    .line 2005
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    const/4 v5, 0x0

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    .line 2006
    const/4 v2, 0x0

    sput-object v2, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 2007
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2008
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$21;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2017
    .end local v17    # "req":Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2018
    .local v15, "date":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2019
    .local v14, "args":[Ljava/lang/String;
    array-length v2, v14

    const/4 v5, 0x2

    if-ne v2, v5, :cond_eb

    .line 2020
    const/4 v2, 0x0

    aget-object v2, v14, v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 2021
    .local v3, "month":Ljava/lang/Integer;
    const/4 v2, 0x1

    aget-object v2, v14, v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 2026
    .local v4, "year":Ljava/lang/Integer;
    :goto_65
    new-instance v1, Lcom/stripe/android/model/Card;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    .line 2027
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    .line 2030
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    .line 2031
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v12, 0x5

    aget-object v11, v11, v12

    .line 2033
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v13, 0x4

    aget-object v12, v12, v13

    .line 2034
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v13}, Lcom/stripe/android/model/Card;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    .local v1, "card":Lcom/stripe/android/model/Card;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/stripe/android/model/Card;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " *"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/stripe/android/model/Card;->getLast4()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    .line 2037
    invoke-virtual {v1}, Lcom/stripe/android/model/Card;->validateNumber()Z

    move-result v2

    if-nez v2, :cond_ef

    .line 2038
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    .line 2039
    const/4 v2, 0x0

    .line 2092
    :goto_ea
    return v2

    .line 2023
    .end local v1    # "card":Lcom/stripe/android/model/Card;
    .end local v3    # "month":Ljava/lang/Integer;
    .end local v4    # "year":Ljava/lang/Integer;
    :cond_eb
    const/4 v3, 0x0

    .line 2024
    .restart local v3    # "month":Ljava/lang/Integer;
    const/4 v4, 0x0

    .restart local v4    # "year":Ljava/lang/Integer;
    goto/16 :goto_65

    .line 2040
    .restart local v1    # "card":Lcom/stripe/android/model/Card;
    :cond_ef
    invoke-virtual {v1}, Lcom/stripe/android/model/Card;->validateExpMonth()Z

    move-result v2

    if-eqz v2, :cond_101

    invoke-virtual {v1}, Lcom/stripe/android/model/Card;->validateExpYear()Z

    move-result v2

    if-eqz v2, :cond_101

    invoke-virtual {v1}, Lcom/stripe/android/model/Card;->validateExpiryDate()Z

    move-result v2

    if-nez v2, :cond_109

    .line 2041
    :cond_101
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    .line 2042
    const/4 v2, 0x0

    goto :goto_ea

    .line 2043
    :cond_109
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    if-eqz v2, :cond_124

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_124

    .line 2044
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    .line 2045
    const/4 v2, 0x0

    goto :goto_ea

    .line 2046
    :cond_124
    invoke-virtual {v1}, Lcom/stripe/android/model/Card;->validateCVC()Z

    move-result v2

    if-nez v2, :cond_132

    .line 2047
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    .line 2048
    const/4 v2, 0x0

    goto :goto_ea

    .line 2049
    :cond_132
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z

    if-eqz v2, :cond_14d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x4

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_14d

    .line 2050
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    .line 2051
    const/4 v2, 0x0

    goto :goto_ea

    .line 2052
    :cond_14d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v2, :cond_168

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x5

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_168

    .line 2053
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    .line 2054
    const/4 v2, 0x0

    goto :goto_ea

    .line 2056
    :cond_168
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(Z)V

    .line 2058
    :try_start_16e
    new-instance v18, Lcom/stripe/android/Stripe;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->stripeApiKey:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/stripe/android/Stripe;-><init>(Ljava/lang/String;)V

    .line 2059
    .local v18, "stripe":Lcom/stripe/android/Stripe;
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$22;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/PaymentFormActivity$22;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Lcom/stripe/android/Stripe;->createToken(Lcom/stripe/android/model/Card;Lcom/stripe/android/TokenCallback;)V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_185} :catch_188

    .line 2092
    .end local v18    # "stripe":Lcom/stripe/android/Stripe;
    :goto_185
    const/4 v2, 0x1

    goto/16 :goto_ea

    .line 2089
    :catch_188
    move-exception v16

    .line 2090
    .local v16, "e":Ljava/lang/Exception;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_185
.end method

.method private sendData()V
    .registers 5

    .prologue
    .line 2225
    iget-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    if-eqz v1, :cond_5

    .line 2282
    :goto_4
    return-void

    .line 2228
    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(Z)V

    .line 2229
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;-><init>()V

    .line 2230
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->msg_id:I

    .line 2231
    sget-object v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v1, :cond_6d

    .line 2232
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsSaved;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsSaved;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    .line 2233
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->id:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->id:Ljava/lang/String;

    .line 2234
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    sget-object v2, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->tmp_password:[B

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->tmp_password:[B

    .line 2241
    :goto_39
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->id:Ljava/lang/String;

    if-eqz v1, :cond_4f

    .line 2242
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->requested_info_id:Ljava/lang/String;

    .line 2243
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    .line 2245
    :cond_4f
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v1, :cond_5f

    .line 2246
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->shipping_option_id:Ljava/lang/String;

    .line 2247
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    .line 2249
    :cond_5f
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$24;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/PaymentFormActivity$24;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_4

    .line 2236
    :cond_6d
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    .line 2237
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    iget-boolean v2, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->save:Z

    .line 2238
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->data:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 2239
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->data:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    goto :goto_39
.end method

.method private sendForm()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2096
    iget-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    if-eqz v1, :cond_7

    .line 2195
    :goto_6
    return-void

    .line 2099
    :cond_7
    invoke-direct {p0, v5}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(Z)V

    .line 2100
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 2101
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v2, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->save:Z

    .line 2102
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->msg_id:I

    .line 2103
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 2104
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-eqz v1, :cond_4f

    .line 2105
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    .line 2106
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2108
    :cond_4f
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v1, :cond_9a

    .line 2109
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    .line 2110
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2112
    :cond_9a
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v1, :cond_bf

    .line 2113
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    .line 2114
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2116
    :cond_bf
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-eqz v1, :cond_151

    .line 2117
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_postAddress;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    .line 2118
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    .line 2119
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    .line 2120
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    .line 2121
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    .line 2122
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    if-eqz v1, :cond_163

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    :goto_130
    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    .line 2123
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    .line 2124
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2126
    :cond_151
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 2127
    .local v0, "req":Lorg/telegram/tgnet/TLObject;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$23;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/PaymentFormActivity$23;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_6

    .line 2122
    .end local v0    # "req":Lorg/telegram/tgnet/TLObject;
    :cond_163
    const-string v1, ""

    goto :goto_130
.end method

.method private setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V
    .registers 2
    .param p1, "paymentFormActivityDelegate"    # Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    .prologue
    .line 309
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    .line 310
    return-void
.end method

.method private setDonePressed(Z)V
    .registers 6
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2293
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    .line 2294
    if-nez p1, :cond_29

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    .line 2295
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    if-nez v0, :cond_2b

    move v0, v1

    :goto_14
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2296
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v2

    if-eqz v0, :cond_28

    .line 2297
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v2

    iget-boolean v3, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    if-nez v3, :cond_2d

    :goto_25
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setEnabled(Z)V

    .line 2299
    :cond_28
    return-void

    :cond_29
    move v0, v2

    .line 2294
    goto :goto_7

    :cond_2b
    move v0, v2

    .line 2295
    goto :goto_14

    :cond_2d
    move v1, v2

    .line 2297
    goto :goto_25
.end method

.method private shakeField(I)V
    .registers 6
    .param p1, "field"    # I

    .prologue
    .line 2285
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2286
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_13

    .line 2287
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2289
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v1, v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    .line 2290
    return-void
.end method

.method private showEditDoneProgress(Z)V
    .registers 12
    .param p1, "show"    # Z

    .prologue
    const/4 v9, 0x0

    const v5, 0x3dcccccd

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2394
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_11

    .line 2395
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2397
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_15f

    .line 2398
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    .line 2399
    if-eqz p1, :cond_ab

    .line 2400
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 2401
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setEnabled(Z)V

    .line 2402
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2403
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2404
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2405
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2406
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2407
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2408
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2402
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2428
    :goto_94
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$26;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PaymentFormActivity$26;-><init>(Lorg/telegram/ui/PaymentFormActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2447
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2448
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2495
    :cond_aa
    :goto_aa
    return-void

    .line 2410
    :cond_ab
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_e3

    .line 2411
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2412
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2413
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2414
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2411
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_94

    .line 2416
    :cond_e3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2417
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setEnabled(Z)V

    .line 2418
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2419
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2420
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2421
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2422
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2423
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2424
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2418
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_94

    .line 2449
    :cond_15f
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_aa

    .line 2450
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    .line 2451
    if-eqz p1, :cond_1ee

    .line 2452
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 2453
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2454
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2455
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2456
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2457
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2458
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2459
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2460
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2454
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2473
    :goto_1d6
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$27;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PaymentFormActivity$27;-><init>(Lorg/telegram/ui/PaymentFormActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2492
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2493
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_aa

    .line 2462
    :cond_1ee
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2463
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2464
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2465
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2466
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2467
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2468
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2469
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2470
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2464
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_1d6
.end method

.method private updateSavePaymentField()V
    .registers 12

    .prologue
    const/16 v10, 0x2a

    const/16 v6, 0x8

    const/4 v7, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1920
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v8

    if-nez v5, :cond_e

    .line 1953
    :goto_d
    return-void

    .line 1923
    :cond_e
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    if-eqz v5, :cond_bb

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v5, :cond_bb

    iget-boolean v5, p0, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    if-nez v5, :cond_bb

    .line 1924
    :cond_20
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string v5, "PaymentCardSavePaymentInformationInfoLine1"

    const v6, 0x7f070410

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1925
    .local v4, "text":Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    if-eqz v5, :cond_b4

    .line 1926
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1927
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1928
    .local v2, "len":I
    const-string v5, "PaymentCardSavePaymentInformationInfoLine2"

    const v6, 0x7f070411

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1929
    .local v3, "str2":Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1930
    .local v0, "index1":I
    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1931
    .local v1, "index2":I
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1932
    if-eq v0, v7, :cond_82

    if-eq v1, v7, :cond_82

    .line 1933
    add-int/2addr v0, v2

    .line 1934
    add-int/2addr v1, v2

    .line 1935
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/PaymentFormActivity$LinkMovementMethodMy;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lorg/telegram/ui/PaymentFormActivity$LinkMovementMethodMy;-><init>(Lorg/telegram/ui/PaymentFormActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1936
    add-int/lit8 v5, v1, 0x1

    const-string v6, ""

    invoke-virtual {v4, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1937
    add-int/lit8 v5, v0, 0x1

    const-string v6, ""

    invoke-virtual {v4, v0, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1938
    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$LinkSpan;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PaymentFormActivity$LinkSpan;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    add-int/lit8 v6, v1, -0x1

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1940
    :cond_82
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(Z)V

    .line 1944
    .end local v0    # "index1":I
    .end local v1    # "index2":I
    .end local v2    # "len":I
    .end local v3    # "str2":Ljava/lang/String;
    :goto_87
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v8

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1945
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setVisibility(I)V

    .line 1946
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setVisibility(I)V

    .line 1947
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v5, v5, v9

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0200d6

    const-string v8, "windowBackgroundGrayShadow"

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 1942
    :cond_b4
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(Z)V

    goto :goto_87

    .line 1949
    .end local v4    # "text":Landroid/text/SpannableStringBuilder;
    :cond_bb
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setVisibility(I)V

    .line 1950
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v8

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setVisibility(I)V

    .line 1951
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v5, v5, v9

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0200d7

    const-string v8, "windowBackgroundGrayShadow"

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 42
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    .prologue
    .line 373
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    if-nez v2, :cond_44c

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "PaymentShippingInfo"

    const v4, 0x7f070428

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 395
    :cond_16
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f0200dd

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$1;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v28

    .line 435
    .local v28, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    if-eqz v2, :cond_59

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_59

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_59

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_93

    .line 436
    :cond_59
    const/4 v2, 0x1

    const v3, 0x7f020114

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 437
    new-instance v2, Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 442
    :cond_93
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->fragmentView:Landroid/view/View;

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity;->fragmentView:Landroid/view/View;

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/FrameLayout;

    .line 444
    .local v22, "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->fragmentView:Landroid/view/View;

    const-string v3, "windowBackgroundGray"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 446
    new-instance v2, Landroid/widget/ScrollView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    const-string v3, "actionBarDefault"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    move-object/from16 v38, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/16 v39, 0x4

    move/from16 v0, v39

    if-ne v8, v0, :cond_527

    const/high16 v8, 0x42400000    # 48.0f

    :goto_ed
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    if-nez v2, :cond_b07

    .line 456
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 457
    .local v26, "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 459
    .local v18, "countryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_12d
    new-instance v32, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "countries.txt"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 461
    .local v32, "reader":Ljava/io/BufferedReader;
    :goto_147
    invoke-virtual/range {v32 .. v32}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    .local v27, "line":Ljava/lang/String;
    if-eqz v27, :cond_52a

    .line 462
    const-string v2, ";"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 463
    .local v12, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    aget-object v4, v12, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    const/4 v3, 0x2

    aget-object v3, v12, v3

    const/4 v4, 0x0

    aget-object v4, v12, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v12, v3

    const/4 v4, 0x2

    aget-object v4, v12, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const/4 v2, 0x1

    aget-object v2, v12, v2

    const/4 v3, 0x2

    aget-object v3, v12, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    array-length v2, v12

    const/4 v3, 0x3

    if-le v2, v3, :cond_196

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v12, v3

    const/4 v4, 0x3

    aget-object v4, v12, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_196
    const/4 v2, 0x1

    aget-object v2, v12, v2

    const/4 v3, 0x2

    aget-object v3, v12, v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_1a1} :catch_1a2

    goto :goto_147

    .line 473
    .end local v12    # "args":[Ljava/lang/String;
    .end local v27    # "line":Ljava/lang/String;
    .end local v32    # "reader":Ljava/io/BufferedReader;
    :catch_1a2
    move-exception v21

    .line 474
    .local v21, "e":Ljava/lang/Exception;
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 477
    .end local v21    # "e":Ljava/lang/Exception;
    :goto_1a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$2;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 484
    const/16 v2, 0xa

    new-array v2, v2, [Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    .line 485
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_1bd
    const/16 v2, 0xa

    if-ge v9, v2, :cond_8c3

    .line 486
    if-nez v9, :cond_52f

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setBackgroundColor(I)V

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "PaymentShippingAddress"

    const v4, 0x7f070422

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    :cond_208
    :goto_208
    const/16 v2, 0x8

    if-ne v9, v2, :cond_59b

    .line 502
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v14, "container":Landroid/view/ViewGroup;
    move-object v2, v14

    .line 503
    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 529
    :cond_231
    :goto_231
    const/16 v2, 0x9

    if-ne v9, v2, :cond_62f

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/HintEditText;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v9

    .line 534
    :goto_242
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "windowBackgroundWhiteHintText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 540
    const/4 v2, 0x4

    if-ne v9, v2, :cond_2a9

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$3;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 563
    :cond_2a9
    const/16 v2, 0x9

    if-eq v9, v2, :cond_2b1

    const/16 v2, 0x8

    if-ne v9, v2, :cond_63e

    .line 564
    :cond_2b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 570
    :goto_2bb
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const v3, 0x10000005

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 571
    packed-switch v9, :pswitch_data_1942

    .line 623
    :cond_2ca
    :goto_2ca
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 625
    const/16 v2, 0x8

    if-ne v9, v2, :cond_83f

    .line 626
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const-string v3, "+"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 630
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v6, 0x0

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 634
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    move-object/from16 v24, v0

    .line 635
    .local v24, "inputFilters":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v24, v2

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v8, v2, v9

    const/16 v2, 0x37

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$4;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 794
    .end local v24    # "inputFilters":[Landroid/text/InputFilter;
    :goto_37d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$6;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 814
    const/16 v2, 0x9

    if-ne v9, v2, :cond_448

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v3, 0x1

    new-instance v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    new-instance v2, Lorg/telegram/ui/Cells/TextCheckCell;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string v3, "PaymentShippingSave"

    const v4, 0x7f07042d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$7;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const v3, 0x7f0200d7

    const-string v4, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "PaymentShippingSaveInfo"

    const v4, 0x7f07042e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    :cond_448
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1bd

    .line 375
    .end local v9    # "a":I
    .end local v14    # "container":Landroid/view/ViewGroup;
    .end local v18    # "countryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v26    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v28    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_44c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_465

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "PaymentShippingMethod"

    const v4, 0x7f070429

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 377
    :cond_465
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_47e

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "PaymentCardInfo"

    const v4, 0x7f07040b

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 379
    :cond_47e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_497

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "PaymentCardInfo"

    const v4, 0x7f07040b

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 381
    :cond_497
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4df

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-eqz v2, :cond_4cd

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Test "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PaymentCheckout"

    const v5, 0x7f070413

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 385
    :cond_4cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "PaymentCheckout"

    const v4, 0x7f070413

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 387
    :cond_4df
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_16

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-eqz v2, :cond_515

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Test "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PaymentReceipt"

    const v5, 0x7f070421

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 391
    :cond_515
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "PaymentReceipt"

    const v4, 0x7f070421

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 449
    .restart local v22    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v28    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_527
    const/4 v8, 0x0

    goto/16 :goto_ed

    .line 472
    .restart local v18    # "countryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v27    # "line":Ljava/lang/String;
    .restart local v32    # "reader":Ljava/io/BufferedReader;
    :cond_52a
    :try_start_52a
    invoke-virtual/range {v32 .. v32}, Ljava/io/BufferedReader;->close()V
    :try_end_52d
    .catch Ljava/lang/Exception; {:try_start_52a .. :try_end_52d} :catch_1a2

    goto/16 :goto_1a6

    .line 491
    .end local v27    # "line":Ljava/lang/String;
    .end local v32    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "a":I
    :cond_52f
    const/4 v2, 0x6

    if-ne v9, v2, :cond_208

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x1

    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setBackgroundColor(I)V

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, "PaymentShippingReceiver"

    const v4, 0x7f07042c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_208

    .line 506
    :cond_59b
    const/16 v2, 0x9

    if-ne v9, v2, :cond_5af

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .restart local v14    # "container":Landroid/view/ViewGroup;
    goto/16 :goto_231

    .line 509
    .end local v14    # "container":Landroid/view/ViewGroup;
    :cond_5af
    new-instance v14, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 510
    .restart local v14    # "container":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 513
    const/4 v2, 0x5

    if-eq v9, v2, :cond_614

    const/16 v2, 0x9

    if-eq v9, v2, :cond_614

    const/4 v11, 0x1

    .line 514
    .local v11, "allowDivider":Z
    :goto_5d5
    if-eqz v11, :cond_5e5

    .line 515
    const/4 v2, 0x7

    if-ne v9, v2, :cond_616

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v2, :cond_616

    .line 516
    const/4 v11, 0x0

    .line 521
    :cond_5e5
    :goto_5e5
    if-eqz v11, :cond_231

    .line 522
    new-instance v20, Landroid/view/View;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 523
    .local v20, "divider":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    const-string v2, "divider"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 525
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x53

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_231

    .line 513
    .end local v11    # "allowDivider":Z
    .end local v20    # "divider":Landroid/view/View;
    :cond_614
    const/4 v11, 0x0

    goto :goto_5d5

    .line 517
    .restart local v11    # "allowDivider":Z
    :cond_616
    const/4 v2, 0x6

    if-ne v9, v2, :cond_5e5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v2, :cond_5e5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v2, :cond_5e5

    .line 518
    const/4 v11, 0x0

    goto :goto_5e5

    .line 532
    .end local v11    # "allowDivider":Z
    :cond_62f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    new-instance v3, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v9

    goto/16 :goto_242

    .line 565
    :cond_63e
    const/4 v2, 0x7

    if-ne v9, v2, :cond_64d

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_2bb

    .line 568
    :cond_64d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/16 v3, 0x4001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_2bb

    .line 573
    :pswitch_65a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "PaymentShippingName"

    const v4, 0x7f07042a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v2, :cond_2ca

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_2ca

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2ca

    .line 579
    :pswitch_691
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "PaymentShippingEmailPlaceholder"

    const v4, 0x7f070427

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v2, :cond_2ca

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz v2, :cond_2ca

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2ca

    .line 585
    :pswitch_6c8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "PaymentShippingAddress1Placeholder"

    const v4, 0x7f070423

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v2, :cond_2ca

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v2, :cond_2ca

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2ca

    .line 591
    :pswitch_701
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "PaymentShippingAddress2Placeholder"

    const v4, 0x7f070424

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v2, :cond_2ca

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v2, :cond_2ca

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2ca

    .line 597
    :pswitch_73a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "PaymentShippingCityPlaceholder"

    const v4, 0x7f070425

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v2, :cond_2ca

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v2, :cond_2ca

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2ca

    .line 603
    :pswitch_773
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "PaymentShippingStatePlaceholder"

    const v4, 0x7f07042f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v2, :cond_2ca

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v2, :cond_2ca

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2ca

    .line 609
    :pswitch_7ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "PaymentShippingCountry"

    const v4, 0x7f070426

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v2, :cond_2ca

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v2, :cond_2ca

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 612
    .local v37, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    if-eqz v37, :cond_7ff

    .end local v37    # "value":Ljava/lang/String;
    :goto_7f8
    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2ca

    .restart local v37    # "value":Ljava/lang/String;
    :cond_7ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    move-object/from16 v37, v0

    goto :goto_7f8

    .line 617
    .end local v37    # "value":Ljava/lang/String;
    :pswitch_806
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "PaymentShippingZipPlaceholder"

    const v4, 0x7f070430

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v2, :cond_2ca

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v2, :cond_2ca

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2ca

    .line 710
    :cond_83f
    const/16 v2, 0x9

    if-ne v9, v2, :cond_883

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v8, v2, v9

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41880000    # 17.0f

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$5;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_37d

    .line 789
    :cond_883
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v3, v2, v9

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8c1

    const/4 v2, 0x5

    :goto_8a0
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v38, v2, v9

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x41880000    # 17.0f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x41880000    # 17.0f

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v14, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_37d

    .line 790
    :cond_8c1
    const/4 v2, 0x3

    goto :goto_8a0

    .line 837
    .end local v14    # "container":Landroid/view/ViewGroup;
    :cond_8c3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v2, :cond_8df

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 840
    :cond_8df
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v2, :cond_8fc

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 843
    :cond_8fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v2, :cond_918

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 847
    :cond_918
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v2, :cond_ab0

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    const v3, 0x10000006

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 857
    :goto_930
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v3, 0x1

    aget-object v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v2, :cond_955

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v2, :cond_955

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v2, :cond_af1

    :cond_955
    const/4 v2, 0x0

    :goto_956
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setVisibility(I)V

    .line 858
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x1

    aget-object v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v2, :cond_97e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v2, :cond_97e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v2, :cond_af5

    :cond_97e
    const/4 v2, 0x0

    :goto_97f
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setVisibility(I)V

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-nez v2, :cond_a10

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setVisibility(I)V

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setVisibility(I)V

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 870
    :cond_a10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v2, :cond_af9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_af9

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->fillNumber(Ljava/lang/String;)V

    .line 876
    :goto_a33
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_aab

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v2, :cond_aab

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v2, :cond_a61

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_aab

    .line 877
    :cond_a61
    const/16 v17, 0x0

    .line 880
    .local v17, "country":Ljava/lang/String;
    :try_start_a63
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/telephony/TelephonyManager;

    .line 881
    .local v35, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v35, :cond_a77

    .line 882
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_a76
    .catch Ljava/lang/Exception; {:try_start_a63 .. :try_end_a76} :catch_b01

    move-result-object v17

    .line 888
    .end local v35    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_a77
    :goto_a77
    if-eqz v17, :cond_aab

    .line 889
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 890
    .local v19, "countryName":Ljava/lang/String;
    if-eqz v19, :cond_aab

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v23

    .line 892
    .local v23, "index":I
    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_aab

    .line 893
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v3, 0x8

    aget-object v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1719
    .end local v9    # "a":I
    .end local v17    # "country":Ljava/lang/String;
    .end local v18    # "countryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "countryName":Ljava/lang/String;
    .end local v23    # "index":I
    .end local v26    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_aab
    :goto_aab
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->fragmentView:Landroid/view/View;

    return-object v2

    .line 849
    .restart local v9    # "a":I
    .restart local v18    # "countryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_ab0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v2, :cond_ac9

    .line 850
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    const v3, 0x10000006

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_930

    .line 851
    :cond_ac9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-eqz v2, :cond_ae2

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    const v3, 0x10000006

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_930

    .line 854
    :cond_ae2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const v3, 0x10000006

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_930

    .line 857
    :cond_af1
    const/16 v2, 0x8

    goto/16 :goto_956

    .line 858
    :cond_af5
    const/16 v2, 0x8

    goto/16 :goto_97f

    .line 873
    :cond_af9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->fillNumber(Ljava/lang/String;)V

    goto/16 :goto_a33

    .line 884
    .restart local v17    # "country":Ljava/lang/String;
    :catch_b01
    move-exception v21

    .line 885
    .restart local v21    # "e":Ljava/lang/Exception;
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_a77

    .line 898
    .end local v9    # "a":I
    .end local v17    # "country":Ljava/lang/String;
    .end local v18    # "countryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v26    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b07
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10ea

    .line 899
    const-string v2, "stripe"

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_provider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c5e

    .line 900
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    .line 901
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(Z)V

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setEnabled(Z)V

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 905
    new-instance v2, Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 909
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_b95

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 911
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v15

    .line 912
    .local v15, "cookieManager":Landroid/webkit/CookieManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/PaymentFormActivity$1;)V

    const-string v4, "TelegramWebviewProxy"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    .end local v15    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_b95
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$8;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v3, 0x2

    new-instance v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 934
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    new-instance v2, Lorg/telegram/ui/Cells/TextCheckCell;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string v3, "PaymentCardSavePaymentInformation"

    const v4, 0x7f07040f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$9;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const v3, 0x7f0200d7

    const-string v4, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 950
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_aab

    .line 954
    :cond_c5e
    :try_start_c5e
    new-instance v25, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c6d
    .catch Ljava/lang/Exception; {:try_start_c5e .. :try_end_c6d} :catch_ea0

    .line 956
    .local v25, "jsonObject":Lorg/json/JSONObject;
    :try_start_c6d
    const-string v2, "need_country"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z
    :try_end_c79
    .catch Ljava/lang/Exception; {:try_start_c6d .. :try_end_c79} :catch_e98

    .line 961
    :goto_c79
    :try_start_c79
    const-string v2, "need_zip"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z
    :try_end_c85
    .catch Ljava/lang/Exception; {:try_start_c79 .. :try_end_c85} :catch_ea6

    .line 966
    :goto_c85
    :try_start_c85
    const-string v2, "need_cardholder_name"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z
    :try_end_c91
    .catch Ljava/lang/Exception; {:try_start_c85 .. :try_end_c91} :catch_eae

    .line 971
    :goto_c91
    :try_start_c91
    const-string v2, "publishable_key"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->stripeApiKey:Ljava/lang/String;
    :try_end_c9d
    .catch Ljava/lang/Exception; {:try_start_c91 .. :try_end_c9d} :catch_eb6

    .line 1018
    .end local v25    # "jsonObject":Lorg/json/JSONObject;
    :goto_c9d
    const/4 v2, 0x6

    new-array v2, v2, [Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    .line 1019
    const/4 v9, 0x0

    .restart local v9    # "a":I
    :goto_ca5
    const/4 v2, 0x6

    if-ge v9, v2, :cond_10a2

    .line 1020
    if-nez v9, :cond_ebf

    .line 1021
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setBackgroundColor(I)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "PaymentCardTitle"

    const v4, 0x7f070412

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1032
    :cond_cef
    :goto_cef
    const/4 v2, 0x3

    if-eq v9, v2, :cond_f09

    const/4 v2, 0x5

    if-eq v9, v2, :cond_f09

    const/4 v2, 0x4

    if-ne v9, v2, :cond_cfe

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v2, :cond_f09

    :cond_cfe
    const/4 v11, 0x1

    .line 1033
    .restart local v11    # "allowDivider":Z
    :goto_cff
    new-instance v14, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1034
    .restart local v14    # "container":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1037
    if-eqz v11, :cond_d4a

    .line 1038
    new-instance v20, Landroid/view/View;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1039
    .restart local v20    # "divider":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    const-string v2, "divider"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1041
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x53

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1044
    .end local v20    # "divider":Landroid/view/View;
    :cond_d4a
    const/16 v29, 0x0

    .line 1045
    .local v29, "onTouchListener":Landroid/view/View$OnTouchListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    new-instance v3, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v9

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "windowBackgroundWhiteHintText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 1052
    const/4 v2, 0x3

    if-ne v9, v2, :cond_f0c

    .line 1053
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    move-object/from16 v24, v0

    .line 1054
    .restart local v24    # "inputFilters":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v24, v2

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/16 v3, 0x82

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1089
    .end local v24    # "inputFilters":[Landroid/text/InputFilter;
    :goto_de2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const v3, 0x10000005

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1090
    packed-switch v9, :pswitch_data_1956

    .line 1111
    :goto_df1
    if-nez v9, :cond_fde

    .line 1112
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$11;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1382
    :cond_e03
    :goto_e03
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v3, v2, v9

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_ff3

    const/4 v2, 0x5

    :goto_e20
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v38, v2, v9

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x41880000    # 17.0f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x41880000    # 17.0f

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v14, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$13;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1409
    const/4 v2, 0x3

    if-ne v9, v2, :cond_ff6

    .line 1410
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1411
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1434
    :cond_e74
    :goto_e74
    const/4 v2, 0x4

    if-ne v9, v2, :cond_e7d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z

    if-eqz v2, :cond_e8f

    :cond_e7d
    const/4 v2, 0x5

    if-ne v9, v2, :cond_e86

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v2, :cond_e8f

    :cond_e86
    const/4 v2, 0x2

    if-ne v9, v2, :cond_e94

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    if-nez v2, :cond_e94

    .line 1435
    :cond_e8f
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1019
    :cond_e94
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_ca5

    .line 957
    .end local v9    # "a":I
    .end local v11    # "allowDivider":Z
    .end local v14    # "container":Landroid/view/ViewGroup;
    .end local v29    # "onTouchListener":Landroid/view/View$OnTouchListener;
    .restart local v25    # "jsonObject":Lorg/json/JSONObject;
    :catch_e98
    move-exception v21

    .line 958
    .restart local v21    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    :try_start_e9a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z
    :try_end_e9e
    .catch Ljava/lang/Exception; {:try_start_e9a .. :try_end_e9e} :catch_ea0

    goto/16 :goto_c79

    .line 975
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v25    # "jsonObject":Lorg/json/JSONObject;
    :catch_ea0
    move-exception v21

    .line 976
    .restart local v21    # "e":Ljava/lang/Exception;
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_c9d

    .line 962
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v25    # "jsonObject":Lorg/json/JSONObject;
    :catch_ea6
    move-exception v21

    .line 963
    .restart local v21    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    :try_start_ea8
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    goto/16 :goto_c85

    .line 967
    .end local v21    # "e":Ljava/lang/Exception;
    :catch_eae
    move-exception v21

    .line 968
    .restart local v21    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    goto/16 :goto_c91

    .line 972
    .end local v21    # "e":Ljava/lang/Exception;
    :catch_eb6
    move-exception v21

    .line 973
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->stripeApiKey:Ljava/lang/String;
    :try_end_ebd
    .catch Ljava/lang/Exception; {:try_start_ea8 .. :try_end_ebd} :catch_ea0

    goto/16 :goto_c9d

    .line 1025
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v25    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "a":I
    :cond_ebf
    const/4 v2, 0x4

    if-ne v9, v2, :cond_cef

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x1

    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setBackgroundColor(I)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, "PaymentBillingAddress"

    const v4, 0x7f070408

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_cef

    .line 1032
    :cond_f09
    const/4 v11, 0x0

    goto/16 :goto_cff

    .line 1059
    .restart local v11    # "allowDivider":Z
    .restart local v14    # "container":Landroid/view/ViewGroup;
    .restart local v29    # "onTouchListener":Landroid/view/View$OnTouchListener;
    :cond_f0c
    if-nez v9, :cond_f1a

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_de2

    .line 1061
    :cond_f1a
    const/4 v2, 0x4

    if-ne v9, v2, :cond_f39

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$10;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_de2

    .line 1082
    :cond_f39
    const/4 v2, 0x1

    if-ne v9, v2, :cond_f49

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/16 v3, 0x4002

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_de2

    .line 1084
    :cond_f49
    const/4 v2, 0x2

    if-ne v9, v2, :cond_f59

    .line 1085
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_de2

    .line 1087
    :cond_f59
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/16 v3, 0x4001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_de2

    .line 1092
    :pswitch_f66
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "PaymentCardNumber"

    const v4, 0x7f07040e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_df1

    .line 1095
    :pswitch_f7a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "PaymentCardCvv"

    const v4, 0x7f070409

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_df1

    .line 1098
    :pswitch_f8e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "PaymentCardExpireDate"

    const v4, 0x7f07040a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_df1

    .line 1101
    :pswitch_fa2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "PaymentCardName"

    const v4, 0x7f07040c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_df1

    .line 1104
    :pswitch_fb6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "PaymentShippingZipPlaceholder"

    const v4, 0x7f070430

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_df1

    .line 1107
    :pswitch_fca
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "PaymentShippingCountry"

    const v4, 0x7f070426

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_df1

    .line 1265
    :cond_fde
    const/4 v2, 0x1

    if-ne v9, v2, :cond_e03

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$12;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_e03

    .line 1383
    :cond_ff3
    const/4 v2, 0x3

    goto/16 :goto_e20

    .line 1412
    :cond_ff6
    const/4 v2, 0x5

    if-ne v9, v2, :cond_e74

    .line 1413
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v3, 0x2

    new-instance v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1414
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1416
    new-instance v2, Lorg/telegram/ui/Cells/TextCheckCell;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1417
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string v3, "PaymentCardSavePaymentInformation"

    const v4, 0x7f07040f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1420
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$14;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1429
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const v3, 0x7f0200d7

    const-string v4, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1430
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_e74

    .line 1438
    .end local v11    # "allowDivider":Z
    .end local v14    # "container":Landroid/view/ViewGroup;
    .end local v29    # "onTouchListener":Landroid/view/View$OnTouchListener;
    :cond_10a2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z

    if-nez v2, :cond_10c6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-nez v2, :cond_10c6

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setVisibility(I)V

    .line 1440
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setVisibility(I)V

    .line 1442
    :cond_10c6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v2, :cond_10db

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const v3, 0x10000006

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_aab

    .line 1445
    :cond_10db
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const v3, 0x10000006

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_aab

    .line 1460
    .end local v9    # "a":I
    :cond_10ea
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11ca

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1462
    .local v16, "count":I
    move/from16 v0, v16

    new-array v2, v0, [Lorg/telegram/ui/Cells/RadioCell;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    .line 1463
    const/4 v9, 0x0

    .restart local v9    # "a":I
    :goto_1104
    move/from16 v0, v16

    if-ge v9, v0, :cond_1191

    .line 1464
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 1465
    .local v34, "shippingOption":Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    new-instance v3, Lorg/telegram/ui/Cells/RadioCell;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v9

    .line 1466
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v2, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/RadioCell;->setTag(Ljava/lang/Object;)V

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v2, v2, v9

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/RadioCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v4, v2, v9

    const-string v2, "%s - %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v34

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, v34

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->title:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-nez v9, :cond_118c

    const/4 v2, 0x1

    move v3, v2

    :goto_1163
    add-int/lit8 v2, v16, -0x1

    if-eq v9, v2, :cond_118f

    const/4 v2, 0x1

    :goto_1168
    invoke-virtual {v4, v5, v3, v2}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 1469
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v2, v2, v9

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$15;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/RadioCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1478
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1463
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1104

    .line 1468
    :cond_118c
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1163

    :cond_118f
    const/4 v2, 0x0

    goto :goto_1168

    .line 1480
    .end local v34    # "shippingOption":Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    :cond_1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1481
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const v3, 0x7f0200d7

    const-string v4, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_aab

    .line 1483
    .end local v9    # "a":I
    .end local v16    # "count":I
    :cond_11ca
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1495

    .line 1484
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    .line 1485
    const/4 v9, 0x0

    .restart local v9    # "a":I
    :goto_11d9
    const/4 v2, 0x2

    if-ge v9, v2, :cond_aab

    .line 1486
    if-nez v9, :cond_1223

    .line 1487
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1488
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setBackgroundColor(I)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "PaymentCardTitle"

    const v4, 0x7f070412

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1493
    :cond_1223
    new-instance v14, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1494
    .restart local v14    # "container":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1495
    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1497
    const/4 v2, 0x1

    if-eq v9, v2, :cond_142d

    const/4 v11, 0x1

    .line 1498
    .restart local v11    # "allowDivider":Z
    :goto_1245
    if-eqz v11, :cond_1255

    .line 1499
    const/4 v2, 0x7

    if-ne v9, v2, :cond_1430

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v2, :cond_1430

    .line 1500
    const/4 v11, 0x0

    .line 1505
    :cond_1255
    :goto_1255
    if-eqz v11, :cond_1282

    .line 1506
    new-instance v20, Landroid/view/View;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1507
    .restart local v20    # "divider":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    const-string v2, "divider"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1509
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x53

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1512
    .end local v20    # "divider":Landroid/view/View;
    :cond_1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    new-instance v3, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v9

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "windowBackgroundWhiteHintText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1517
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1518
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 1519
    if-nez v9, :cond_144a

    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$16;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1531
    :goto_12f5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const v3, 0x10000006

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1532
    packed-switch v9, :pswitch_data_1966

    .line 1542
    :goto_1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v3, v2, v9

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1492

    const/4 v2, 0x5

    :goto_1321
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v38, v2, v9

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x41880000    # 17.0f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x41880000    # 17.0f

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v14, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$17;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1556
    const/4 v2, 0x1

    if-ne v9, v2, :cond_1429

    .line 1557
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1558
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "PaymentConfirmationMessage"

    const v4, 0x7f07041a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const v3, 0x7f0200d6

    const-string v4, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1562
    new-instance v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v3, "PaymentConfirmationNewCard"

    const v4, 0x7f07041b

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 1565
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$18;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x1

    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const v3, 0x7f0200d7

    const-string v4, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1576
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1485
    :cond_1429
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_11d9

    .line 1497
    .end local v11    # "allowDivider":Z
    :cond_142d
    const/4 v11, 0x0

    goto/16 :goto_1245

    .line 1501
    .restart local v11    # "allowDivider":Z
    :cond_1430
    const/4 v2, 0x6

    if-ne v9, v2, :cond_1255

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v2, :cond_1255

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v2, :cond_1255

    .line 1502
    const/4 v11, 0x0

    goto/16 :goto_1255

    .line 1528
    :cond_144a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_12f5

    .line 1534
    :pswitch_1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1304

    .line 1537
    :pswitch_1475
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    const-string v3, "LoginPassword"

    const v4, 0x7f0702f7

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1304

    .line 1543
    :cond_1492
    const/4 v2, 0x3

    goto/16 :goto_1321

    .line 1579
    .end local v9    # "a":I
    .end local v11    # "allowDivider":Z
    .end local v14    # "container":Landroid/view/ViewGroup;
    :cond_1495
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_14a3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_aab

    .line 1580
    :cond_14a3
    new-instance v2, Lorg/telegram/ui/Cells/PaymentInfoCell;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/PaymentInfoCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    .line 1581
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/PaymentInfoCell;->setBackgroundColor(I)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/Cells/PaymentInfoCell;->setInvoice(Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;Ljava/lang/String;)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1586
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1588
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1589
    .local v13, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1590
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v2, :cond_1522

    .line 1591
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1593
    :cond_1522
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v36

    .line 1595
    .local v36, "totalPrice":Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9    # "a":I
    :goto_1529
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_1573

    .line 1596
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    .line 1598
    .local v30, "price":Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;
    new-instance v31, Lorg/telegram/ui/Cells/TextPriceCell;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;)V

    .line 1599
    .local v31, "priceCell":Lorg/telegram/ui/Cells/TextPriceCell;
    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextPriceCell;->setBackgroundColor(I)V

    .line 1600
    move-object/from16 v0, v30

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->label:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    move-object/from16 v0, v30

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1595
    add-int/lit8 v9, v9, 0x1

    goto :goto_1529

    .line 1604
    .end local v30    # "price":Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;
    .end local v31    # "priceCell":Lorg/telegram/ui/Cells/TextPriceCell;
    :cond_1573
    new-instance v31, Lorg/telegram/ui/Cells/TextPriceCell;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;)V

    .line 1605
    .restart local v31    # "priceCell":Lorg/telegram/ui/Cells/TextPriceCell;
    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextPriceCell;->setBackgroundColor(I)V

    .line 1606
    const-string v2, "PaymentTransactionTotal"

    const v3, 0x7f070436

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1609
    new-instance v20, Landroid/view/View;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1610
    .restart local v20    # "divider":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    const-string v2, "divider"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/16 v6, 0x53

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1615
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1616
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    const-string v4, "PaymentCheckoutMethod"

    const v5, 0x7f070415

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1618
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_162b

    .line 1619
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$19;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PaymentFormActivity$19;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1637
    :cond_162b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-eqz v2, :cond_181c

    .line 1638
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v2, :cond_16d2

    .line 1639
    const-string v2, "%s %s, %s, %s, %s, %s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1640
    .local v10, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x1

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1641
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setBackgroundColor(I)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, "PaymentShippingAddress"

    const v4, 0x7f070422

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v10, v3, v4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1646
    .end local v10    # "address":Ljava/lang/String;
    :cond_16d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_1724

    .line 1647
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x2

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setBackgroundColor(I)V

    .line 1649
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    const-string v4, "PaymentCheckoutName"

    const v5, 0x7f070416

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1653
    :cond_1724
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    if-eqz v2, :cond_177e

    .line 1654
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x3

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setBackgroundColor(I)V

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PaymentCheckoutPhoneNumber"

    const v5, 0x7f070418

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1660
    :cond_177e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz v2, :cond_17d0

    .line 1661
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x4

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1662
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setBackgroundColor(I)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    const-string v4, "PaymentCheckoutEmail"

    const v5, 0x7f070414

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1667
    :cond_17d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v2, :cond_181c

    .line 1668
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x5

    new-instance v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1669
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setBackgroundColor(I)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->title:Ljava/lang/String;

    const-string v4, "PaymentCheckoutShippingMethod"

    const v5, 0x7f070419

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1671
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1675
    :cond_181c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1908

    .line 1676
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    .line 1677
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1678
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x50

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1679
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$20;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PaymentFormActivity$20;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1698
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    .line 1699
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string v3, "windowBackgroundWhiteBlueText6"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string v3, "PaymentCheckoutPay"

    const v4, 0x7f070417

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v36, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1702
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1704
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1706
    new-instance v2, Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    .line 1707
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1708
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1710
    new-instance v33, Landroid/view/View;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1711
    .local v33, "shadow":Landroid/view/View;
    const v2, 0x7f0200da

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1712
    const/4 v2, -0x1

    const/high16 v3, 0x40400000    # 3.0f

    const/16 v4, 0x53

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1715
    .end local v33    # "shadow":Landroid/view/View;
    :cond_1908
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v3, 0x1

    new-instance v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 1716
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const v3, 0x7f0200d7

    const-string v4, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_aab

    .line 571
    nop

    :pswitch_data_1942
    .packed-switch 0x0
        :pswitch_6c8
        :pswitch_701
        :pswitch_73a
        :pswitch_773
        :pswitch_7ac
        :pswitch_806
        :pswitch_65a
        :pswitch_691
    .end packed-switch

    .line 1090
    :pswitch_data_1956
    .packed-switch 0x0
        :pswitch_f66
        :pswitch_f8e
        :pswitch_fa2
        :pswitch_f7a
        :pswitch_fca
        :pswitch_fb6
    .end packed-switch

    .line 1532
    :pswitch_data_1966
    .packed-switch 0x0
        :pswitch_1462
        :pswitch_1475
    .end packed-switch
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1797
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didSetTwoStepPassword:I

    if-ne p1, v0, :cond_d

    .line 1798
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    .line 1799
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    .line 1806
    :cond_c
    :goto_c
    return-void

    .line 1800
    :cond_d
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didRemovedTwoStepPassword:I

    if-ne p1, v0, :cond_1a

    .line 1801
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    .line 1802
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    goto :goto_c

    .line 1803
    :cond_1a
    sget v0, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    if-ne p1, v0, :cond_c

    .line 1804
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->removeSelfFromStack()V

    goto :goto_c
.end method

.method public fillNumber(Ljava/lang/String;)V
    .registers 15
    .param p1, "number"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1958
    :try_start_2
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 1959
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x1

    .line 1960
    .local v1, "allowCall":Z
    const/4 v2, 0x1

    .line 1961
    .local v2, "allowSms":Z
    if-nez p1, :cond_1c

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    if-eq v11, v9, :cond_b7

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v11

    if-eqz v11, :cond_b7

    .line 1962
    :cond_1c
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-lt v11, v12, :cond_3c

    .line 1963
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_b8

    move v1, v9

    .line 1964
    :goto_2f
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "android.permission.RECEIVE_SMS"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_bb

    move v2, v9

    .line 1966
    :cond_3c
    :goto_3c
    if-nez p1, :cond_42

    if-nez v1, :cond_42

    if-eqz v2, :cond_b7

    .line 1967
    :cond_42
    if-nez p1, :cond_4c

    .line 1968
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1970
    :cond_4c
    const/4 v7, 0x0

    .line 1971
    .local v7, "textToSet":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1972
    .local v5, "ok":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b7

    .line 1973
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_99

    .line 1974
    const/4 v0, 0x4

    .local v0, "a":I
    :goto_5c
    if-lt v0, v9, :cond_7f

    .line 1975
    const/4 v10, 0x0

    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1976
    .local v6, "sub":Ljava/lang/String;
    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1977
    .local v3, "country":Ljava/lang/String;
    if-eqz v3, :cond_bd

    .line 1978
    const/4 v5, 0x1

    .line 1979
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1980
    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v10, 0x8

    aget-object v9, v9, v10

    invoke-virtual {v9, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1984
    .end local v3    # "country":Ljava/lang/String;
    .end local v6    # "sub":Ljava/lang/String;
    :cond_7f
    if-nez v5, :cond_99

    .line 1985
    const/4 v9, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1986
    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v10, 0x8

    aget-object v9, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1989
    .end local v0    # "a":I
    :cond_99
    if-eqz v7, :cond_b7

    .line 1990
    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v10, 0x9

    aget-object v9, v9, v10

    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1991
    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v10, 0x9

    aget-object v9, v9, v10

    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v11, 0x9

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b7} :catch_c0

    .line 1999
    .end local v1    # "allowCall":Z
    .end local v2    # "allowSms":Z
    .end local v5    # "ok":Z
    .end local v7    # "textToSet":Ljava/lang/String;
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_b7
    :goto_b7
    return-void

    .restart local v1    # "allowCall":Z
    .restart local v2    # "allowSms":Z
    .restart local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_b8
    move v1, v10

    .line 1963
    goto/16 :goto_2f

    :cond_bb
    move v2, v10

    .line 1964
    goto :goto_3c

    .line 1974
    .restart local v0    # "a":I
    .restart local v3    # "country":Ljava/lang/String;
    .restart local v5    # "ok":Z
    .restart local v6    # "sub":Ljava/lang/String;
    .restart local v7    # "textToSet":Ljava/lang/String;
    :cond_bd
    add-int/lit8 v0, v0, -0x1

    goto :goto_5c

    .line 1996
    .end local v0    # "a":I
    .end local v1    # "allowCall":Z
    .end local v2    # "allowSms":Z
    .end local v3    # "country":Ljava/lang/String;
    .end local v5    # "ok":Z
    .end local v6    # "sub":Ljava/lang/String;
    .end local v7    # "textToSet":Ljava/lang/String;
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :catch_c0
    move-exception v4

    .line 1997
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_b7
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 12

    .prologue
    .line 2504
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2505
    .local v10, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/ActionBar/ThemeDescription;>;"
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2506
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2507
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2508
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2509
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2510
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2511
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSearch"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2512
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSearchPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2513
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2514
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "contextProgressInner2"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2515
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "contextProgressOuter2"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2517
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    if-eqz v0, :cond_11f

    .line 2518
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_d5
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    array-length v0, v0

    if-ge v9, v0, :cond_141

    .line 2519
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2520
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2521
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2518
    add-int/lit8 v9, v9, 0x1

    goto :goto_d5

    .line 2524
    .end local v9    # "a":I
    :cond_11f
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2525
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2527
    :cond_141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    if-eqz v0, :cond_1df

    .line 2528
    const/4 v9, 0x0

    .restart local v9    # "a":I
    :goto_146
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    array-length v0, v0

    if-ge v9, v0, :cond_23e

    .line 2529
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2530
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2531
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v1, v1, v9

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2532
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "radioBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2533
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "radioBackgroundChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2528
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_146

    .line 2536
    .end local v9    # "a":I
    :cond_1df
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2537
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "radioBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2538
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "radioBackgroundChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2540
    :cond_23e
    const/4 v9, 0x0

    .restart local v9    # "a":I
    :goto_23f
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    array-length v0, v0

    if-ge v9, v0, :cond_27d

    .line 2541
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2542
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v9

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlueHeader"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2540
    add-int/lit8 v9, v9, 0x1

    goto :goto_23f

    .line 2544
    :cond_27d
    const/4 v9, 0x0

    :goto_27e
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    array-length v0, v0

    if-ge v9, v0, :cond_2a1

    .line 2545
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2544
    add-int/lit8 v9, v9, 0x1

    goto :goto_27e

    .line 2547
    :cond_2a1
    const/4 v9, 0x0

    :goto_2a2
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    array-length v0, v0

    if-ge v9, v0, :cond_30a

    .line 2548
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2549
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2550
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteLinkText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2547
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a2

    .line 2552
    :cond_30a
    const/4 v9, 0x0

    :goto_30b
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_32e

    .line 2553
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2552
    add-int/lit8 v9, v9, 0x1

    goto :goto_30b

    .line 2556
    :cond_32e
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2558
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2559
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchThumb"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2560
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchTrack"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2561
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchThumbChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2562
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchTrackChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2563
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2564
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2566
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2567
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2568
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2570
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteBlueText6"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2572
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2573
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2574
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2575
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2576
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2578
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2579
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2581
    const/4 v9, 0x1

    :goto_522
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    array-length v0, v0

    if-ge v9, v0, :cond_582

    .line 2582
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2583
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v9

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2584
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v9

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2581
    add-int/lit8 v9, v9, 0x1

    goto :goto_522

    .line 2587
    :cond_582
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2588
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/PaymentInfoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "nameTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2589
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/PaymentInfoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "detailTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2590
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/PaymentInfoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "detailExTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2592
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2593
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2595
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    return-object v0
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 2499
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onFragmentCreate()Z
    .registers 3

    .prologue
    .line 1740
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1741
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didRemovedTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1742
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    .line 1743
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1745
    :cond_20
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .registers 5

    .prologue
    .line 1750
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didSetTwoStepPassword:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1751
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didRemovedTwoStepPassword:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1752
    iget v2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_20

    .line 1753
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1755
    :cond_20
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_47

    .line 1757
    :try_start_24
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1758
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_33

    .line 1759
    check-cast v1, Landroid/widget/FrameLayout;

    .end local v1    # "parent":Landroid/view/ViewParent;
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1761
    :cond_33
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->stopLoading()V

    .line 1762
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const-string v3, "about:blank"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1763
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 1764
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_47} :catch_72

    .line 1770
    :cond_47
    :goto_47
    :try_start_47
    iget v2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6b

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_6b

    sget-object v2, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5e

    sget-boolean v2, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    if-eqz v2, :cond_6b

    .line 1771
    :cond_5e
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_6b} :catch_77

    .line 1776
    :cond_6b
    :goto_6b
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 1777
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    .line 1778
    return-void

    .line 1765
    :catch_72
    move-exception v0

    .line 1766
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_47

    .line 1773
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_77
    move-exception v0

    .line 1774
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6b
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 368
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 345
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 346
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/PaymentFormActivity;->classGuid:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 347
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_26

    .line 349
    :try_start_12
    iget v1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    .line 350
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 361
    :cond_26
    :goto_26
    return-void

    .line 351
    :cond_27
    sget-object v1, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_33

    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    if-eqz v1, :cond_26

    .line 352
    :cond_33
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_40} :catch_41

    goto :goto_26

    .line 354
    :catch_41
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method protected onTransitionAnimationEnd(ZZ)V
    .registers 7
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1782
    if-eqz p1, :cond_13

    if-nez p2, :cond_13

    .line 1783
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_14

    .line 1784
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1793
    :cond_13
    :goto_13
    return-void

    .line 1785
    :cond_14
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 1786
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1787
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    goto :goto_13

    .line 1788
    :cond_28
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    .line 1789
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1790
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    goto :goto_13
.end method
