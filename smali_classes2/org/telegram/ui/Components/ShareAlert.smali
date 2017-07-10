.class public Lorg/telegram/ui/Components/ShareAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ShareAlert.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;,
        Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    }
.end annotation


# instance fields
.field private copyLinkOnEnd:Z

.field private doneButton:Landroid/widget/LinearLayout;

.field private doneButtonBadgeTextView:Landroid/widget/TextView;

.field private doneButtonTextView:Landroid/widget/TextView;

.field private exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private isPublicChannel:Z

.field private layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

.field private linkToCopy:Ljava/lang/String;

.field private listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

.field private loadingLink:Z

.field private nameTextView:Landroid/widget/EditText;

.field private scrollOffsetY:I

.field private searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

.field private searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private selectedDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field private sendingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private sendingText:Ljava/lang/String;

.field private shadow:Landroid/view/View;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private topBeforeSwitch:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLjava/lang/String;Z)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "publicChannel"    # Z
    .param p5, "copyLink"    # Ljava/lang/String;
    .param p6, "fullScreen"    # Z

    .prologue
    .line 97
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020252

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "dialogBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 102
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 104
    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    .line 105
    move/from16 v0, p4

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->isPublicChannel:Z

    .line 106
    iput-object p3, p0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:Ljava/lang/String;

    .line 108
    if-eqz p4, :cond_69

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    .line 110
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;-><init>()V

    .line 111
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v9, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->id:I

    .line 112
    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 113
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$1;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    invoke-virtual {v1, v9, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 132
    .end local v9    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;
    :cond_69
    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$2;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    .line 187
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 188
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    sget v2, Lorg/telegram/ui/Components/ShareAlert;->backgroundPaddingLeft:I

    const/4 v3, 0x0

    sget v4, Lorg/telegram/ui/Components/ShareAlert;->backgroundPaddingLeft:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 190
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    .line 191
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    const-string v2, "dialogBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 192
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$3;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    .line 200
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 201
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    const-string v2, "dialogButtonSelector"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 203
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/16 v5, 0x35

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$4;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    .line 233
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 234
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 235
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const-string v2, "dialogBadgeText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 237
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41480000    # 12.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const-string v3, "dialogBadgeBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 239
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 240
    iget-object v10, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/16 v2, 0x17

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    .line 243
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 244
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 245
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 246
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 247
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x10

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 250
    .local v8, "imageView":Landroid/widget/ImageView;
    const v1, 0x7f0200ea

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "dialogIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 252
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 253
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 254
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x13

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    .line 257
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const-string v2, "ShareSendTo"

    const v3, 0x7f070502

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 259
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 260
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 261
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 262
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const-string v2, "dialogTextHint"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 264
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 265
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/16 v2, 0x4001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 266
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 267
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const-string v2, "dialogTextBlack"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 268
    iget-object v10, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v11, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x33

    const/high16 v4, 0x42400000    # 48.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x42c00000    # 96.0f

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$5;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 309
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 310
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 311
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 312
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 313
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 314
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setHorizontalScrollBarEnabled(Z)V

    .line 315
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 316
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$6;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 330
    iget-object v10, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 332
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v2, "dialogScrollGlow"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 333
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$7;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 359
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$8;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 366
    new-instance v1, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 367
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 368
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 369
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string v2, "NoChats"

    const v3, 0x7f070354

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 371
    iget-object v10, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:Landroid/view/View;

    .line 376
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:Landroid/view/View;

    const v2, 0x7f0200d9

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 377
    iget-object v10, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:Landroid/view/View;

    const/4 v1, -0x1

    const/high16 v2, 0x40400000    # 3.0f

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount()V

    .line 381
    sget-boolean v1, Lorg/telegram/ui/DialogsActivity;->dialogsLoaded:Z

    if-nez v1, :cond_36e

    .line 382
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    .line 383
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->checkInviteText()V

    .line 384
    const/4 v1, 0x1

    sput-boolean v1, Lorg/telegram/ui/DialogsActivity;->dialogsLoaded:Z

    .line 386
    :cond_36e
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    # getter for: Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$2200(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_383

    .line 387
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 389
    :cond_383
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;)Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ShareAlert;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->copyLinkOnEnd:Z

    return v0
.end method

.method static synthetic access$1000()I
    .registers 1

    .prologue
    .line 68
    sget v0, Lorg/telegram/ui/Components/ShareAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/ShareAlert;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->copyLinkOnEnd:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ShareAlert;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->isPublicChannel:Z

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ShareAlert;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ShareAlert;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ShareAlert;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topBeforeSwitch:I

    return v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/ShareAlert;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topBeforeSwitch:I

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ShareAlert;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getCurrentTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->copyLink(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/messenger/support/widget/GridLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ShareAlert;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/ShareAlert;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ShareAlert;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    return-object v0
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 68
    sget v0, Lorg/telegram/ui/Components/ShareAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ShareAlert;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->updateLayout()V

    return-void
.end method

.method private copyLink(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 437
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    if-nez v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 448
    :goto_8
    return-void

    .line 441
    :cond_9
    :try_start_9
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 442
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v4, "label"

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:Ljava/lang/String;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:Ljava/lang/String;

    :goto_1b
    invoke-static {v4, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 443
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 444
    const-string v3, "LinkCopied"

    const v4, 0x7f0702e0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_33} :catch_34

    goto :goto_8

    .line 445
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :catch_34
    move-exception v2

    .line 446
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 442
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "clipboard":Landroid/content/ClipboardManager;
    :cond_39
    :try_start_39
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;->link:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_34

    goto :goto_1b
.end method

.method private getCurrentTop()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 392
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_32

    .line 393
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 395
    .local v1, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    if-eqz v1, :cond_32

    .line 396
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-ltz v4, :cond_2f

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    :cond_2f
    sub-int v2, v3, v2

    .line 399
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :goto_31
    return v2

    :cond_32
    const/16 v2, -0x3e8

    goto :goto_31
.end method

.method private updateLayout()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 420
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_a

    .line 434
    :cond_9
    :goto_9
    return-void

    .line 423
    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 424
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 425
    .local v1, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v3, v4, v5

    .line 426
    .local v3, "top":I
    if-lez v3, :cond_2f

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_2f

    move v2, v3

    .line 427
    .local v2, "newOffset":I
    :cond_2f
    iget v4, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    if-eq v4, v2, :cond_9

    .line 428
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v2, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 429
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget v5, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 430
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:Landroid/view/View;

    iget v5, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 431
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    iget v5, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTranslationY(F)V

    .line 432
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_9
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .registers 2

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 405
    sget v0, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    if-ne p1, v0, :cond_16

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    if-eqz v0, :cond_d

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->fetchDialogs()V

    .line 409
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 411
    :cond_16
    return-void
.end method

.method public dismiss()V
    .registers 3

    .prologue
    .line 474
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 475
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 476
    return-void
.end method

.method public updateSelectedCount()V
    .registers 8

    .prologue
    const v6, 0x7f0704d4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->isPublicChannel:Z

    if-nez v0, :cond_3c

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:Ljava/lang/String;

    if-nez v0, :cond_3c

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string v1, "dialogTextGray4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string v1, "Send"

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    :goto_3b
    return-void

    .line 458
    :cond_3c
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string v1, "dialogTextBlue2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string v1, "CopyLink"

    const v2, 0x7f07019b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b

    .line 463
    :cond_5f
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string v1, "dialogTextBlue3"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string v1, "Send"

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b
.end method
