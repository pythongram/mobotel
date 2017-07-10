.class public Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SpecialContactsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private checked:Z

.field private emptyTextView:Landroid/widget/TextView;

.field enableSCSTextCheck:Lorg/telegram/ui/Cells/TextCheckCell;

.field enableSCTextCheck:Lorg/telegram/ui/Cells/TextCheckCell;

.field private listView:Landroid/widget/ListView;

.field private listViewAdapter:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->checked:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->checked:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->checked:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;)Landroid/widget/BaseAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listViewAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v10, 0x7f0200dd

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 48
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 49
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v10, "SpecialContacts"

    const v11, 0x7f0707dc

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v10, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$1;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$1;-><init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 62
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v5

    .line 63
    .local v5, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v9, 0x1

    const v10, 0x7f020047

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 64
    const/4 v9, 0x2

    const v10, 0x7f02016f

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 67
    new-instance v9, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactAdapter;

    invoke-direct {v9, p1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactAdapter;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listViewAdapter:Landroid/widget/BaseAdapter;

    .line 69
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->fragmentView:Landroid/view/View;

    .line 71
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    .local v6, "parent":Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->fragmentView:Landroid/view/View;

    check-cast v9, Landroid/widget/FrameLayout;

    invoke-virtual {v9, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 74
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    .local v7, "parentParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v9, -0x1

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 76
    const/4 v9, -0x1

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 77
    const/16 v9, 0x31

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 79
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v10, "mainconfig"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 82
    .local v8, "preferences":Landroid/content/SharedPreferences;
    new-instance v9, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v9, p1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->enableSCTextCheck:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 83
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->enableSCTextCheck:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 84
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->enableSCTextCheck:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string v10, "EnableSpecialContacts"

    const v11, 0x7f0706da

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "specific_contact"

    const/4 v12, 0x0

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 85
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->enableSCTextCheck:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v10, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$2;

    invoke-direct {v10, p0, v8}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$2;-><init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->enableSCTextCheck:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    new-instance v9, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v9, p1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->enableSCSTextCheck:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 106
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->enableSCSTextCheck:Lorg/telegram/ui/Cells/TextCheckCell;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setVisibility(I)V

    .line 107
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->enableSCSTextCheck:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 108
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->enableSCSTextCheck:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string v10, "EnableSpecialContactsService"

    const v11, 0x7f0706da

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "specific_contact_service"

    const/4 v12, 0x0

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 109
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->enableSCSTextCheck:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v10, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$3;

    invoke-direct {v10, p0, v8}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$3;-><init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->enableSCSTextCheck:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    new-instance v1, Lorg/telegram/ui/Telehgram/TextDescriptionCell;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;-><init>(Landroid/content/Context;)V

    .line 126
    .local v1, "enableSCSTextDescription":Lorg/telegram/ui/Telehgram/TextDescriptionCell;
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->setVisibility(I)V

    .line 127
    const/4 v9, -0x1

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->setBackgroundColor(I)V

    .line 128
    const-string v9, "EnableSCServiceDes"

    const v10, 0x7f0706d9

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 129
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "emptyTextLayout":Landroid/widget/LinearLayout;
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 134
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, -0x1

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 137
    const/4 v9, -0x1

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 138
    const/16 v9, 0x30

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 139
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v9, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$4;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$4;-><init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->emptyTextView:Landroid/widget/TextView;

    .line 148
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->emptyTextView:Landroid/widget/TextView;

    const v10, -0x7f7f80

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->emptyTextView:Landroid/widget/TextView;

    const/4 v10, 0x1

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 150
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v10, "NoSpecialContacts"

    const v11, 0x7f070772

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v10, "fonts/rmedium.ttf"

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 153
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 155
    .local v4, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, -0x1

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 156
    const/4 v9, -0x1

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 157
    const/high16 v9, 0x3f000000    # 0.5f

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 158
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 161
    .local v2, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 163
    .restart local v4    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, -0x1

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 164
    const/4 v9, -0x1

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 165
    const/high16 v9, 0x3f000000    # 0.5f

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 166
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v9, Landroid/widget/ListView;

    invoke-direct {v9, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    .line 169
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 170
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 171
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 173
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 174
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    const/high16 v10, 0x2000000

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 175
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    iget-object v10, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listViewAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 177
    iget-object v10, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_20f

    const/4 v9, 0x1

    :goto_1dd
    invoke-virtual {v10, v9}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 178
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 180
    .restart local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, -0x1

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 181
    const/4 v9, -0x1

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 182
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    new-instance v10, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$5;

    invoke-direct {v10, p0, v8}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$5;-><init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 226
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listView:Landroid/widget/ListView;

    new-instance v10, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$6;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$6;-><init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 238
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->fragmentView:Landroid/view/View;

    return-object v9

    .line 177
    :cond_20f
    const/4 v9, 0x2

    goto :goto_1dd
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 252
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 243
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listViewAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_c

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->listViewAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 247
    :cond_c
    return-void
.end method
