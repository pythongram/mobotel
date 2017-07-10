.class public Lorg/telegram/ui/Components/ChatDialogsView;
.super Landroid/widget/FrameLayout;
.source "ChatDialogsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;,
        Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;,
        Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;,
        Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;
    }
.end annotation


# instance fields
.field private avatarSize:I

.field private btn:Landroid/widget/ImageView;

.field private delegate:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

.field private dialogsType:I

.field private disableLongCick:Z

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private listAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

.field private listHeight:I

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listWidth:I

.field private refresh:Z

.field private textSize:I

.field private tv:Landroid/widget/TextView;

.field private vertical:Z

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;J)V
    .registers 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p3, "chat_id"    # J

    .prologue
    .line 65
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/16 v4, 0x28

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->avatarSize:I

    .line 56
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->avatarSize:I

    add-int/lit8 v4, v4, 0x14

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listWidth:I

    .line 58
    const/16 v4, 0xa

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->textSize:I

    .line 59
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->avatarSize:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/ChatDialogsView;->textSize:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x19

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listHeight:I

    .line 69
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatDialogsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 70
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    .line 71
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    .line 72
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->refresh:Z

    .line 73
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    .line 74
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v4, :cond_231

    .line 75
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listWidth:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ChatDialogsView;->setTranslationX(F)V

    .line 79
    :goto_59
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 80
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ChatDialogsView;->setBackgroundColor(I)V

    .line 81
    new-instance v4, Lorg/telegram/ui/Components/ChatDialogsView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/ChatDialogsView$1;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 89
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 91
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 93
    new-instance v20, Lorg/telegram/ui/Components/ChatDialogsView$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ChatDialogsView$2;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V

    .line 98
    .local v20, "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v4, :cond_243

    const/4 v4, 0x1

    :goto_b2
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 99
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 100
    new-instance v5, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;JLorg/telegram/ui/Components/ChatDialogsView$1;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .line 101
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/ChatDialogsView$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/ChatDialogsView$3;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/ChatDialogsView$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/ChatDialogsView$4;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, -0x1

    const/4 v7, -0x1

    const/4 v11, 0x5

    invoke-static {v5, v7, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/ChatDialogsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    .line 119
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarNamesColor:I

    const v7, -0xdededf

    if-eq v4, v7, :cond_246

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarNamesColor:I

    :goto_11f
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v4, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v4, :cond_24b

    const v4, 0x7f0200fd

    :goto_131
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v4, :cond_250

    const v4, 0x7f0200fb

    :goto_14a
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 123
    .local v18, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v18, :cond_159

    .line 124
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 126
    :cond_159
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    .line 128
    .local v21, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v4, :cond_259

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    if-eqz v4, :cond_255

    const/16 v6, 0x10

    .line 129
    .local v6, "i":I
    :goto_174
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v4, :cond_264

    .line 130
    const/4 v8, 0x0

    .line 134
    .local v8, "f":F
    :goto_17b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v4, :cond_26b

    .line 135
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listWidth:I

    int-to-float v9, v4

    .line 139
    .local v9, "f2":F
    :goto_186
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v4, :cond_276

    .line 141
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    if-eqz v4, :cond_26e

    .line 142
    const/16 v19, 0x0

    .line 146
    .local v19, "i2":I
    :goto_192
    move/from16 v0, v19

    int-to-float v10, v0

    .line 150
    .end local v19    # "i2":I
    .local v10, "f3":F
    :goto_195
    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/ChatDialogsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Components/ChatDialogsView$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/ChatDialogsView$5;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Components/ChatDialogsView$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/ChatDialogsView$6;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Components/ChatDialogsView$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/ChatDialogsView$7;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarNamesColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v7, 0x41100000    # 9.0f

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    const/4 v11, -0x2

    const/high16 v12, -0x40000000    # -2.0f

    const/16 v13, 0x31

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v5, :cond_279

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v14, v5

    :goto_222
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/ChatDialogsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    return-void

    .line 77
    .end local v6    # "i":I
    .end local v8    # "f":F
    .end local v9    # "f2":F
    .end local v10    # "f3":F
    .end local v18    # "d":Landroid/graphics/drawable/Drawable;
    .end local v20    # "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .end local v21    # "view":Landroid/view/View;
    :cond_231
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listHeight:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ChatDialogsView;->setTranslationY(F)V

    goto/16 :goto_59

    .line 98
    .restart local v20    # "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    :cond_243
    const/4 v4, 0x0

    goto/16 :goto_b2

    .line 119
    :cond_246
    const v4, -0xad8a64

    goto/16 :goto_11f

    .line 120
    :cond_24b
    const v4, 0x7f020245

    goto/16 :goto_131

    .line 122
    :cond_250
    const v4, 0x7f0200fa

    goto/16 :goto_14a

    .line 128
    .restart local v18    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v21    # "view":Landroid/view/View;
    :cond_255
    const/16 v6, -0x50

    goto/16 :goto_174

    :cond_259
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    if-eqz v4, :cond_260

    const/4 v6, 0x1

    goto/16 :goto_174

    :cond_260
    const/16 v6, 0x35

    goto/16 :goto_174

    .line 132
    .restart local v6    # "i":I
    :cond_264
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listHeight:I

    int-to-float v8, v4

    .restart local v8    # "f":F
    goto/16 :goto_17b

    .line 137
    :cond_26b
    const/4 v9, 0x0

    .restart local v9    # "f2":F
    goto/16 :goto_186

    .line 144
    :cond_26e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatDialogsView;->listWidth:I

    move/from16 v19, v0

    .restart local v19    # "i2":I
    goto/16 :goto_192

    .line 148
    .end local v19    # "i2":I
    :cond_276
    const/4 v10, 0x0

    .restart local v10    # "f3":F
    goto/16 :goto_195

    .line 196
    :cond_279
    const/4 v14, 0x0

    goto :goto_222
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->delegate:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatDialogsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatDialogsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listWidth:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatDialogsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listHeight:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatDialogsView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatDialogsView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->disableLongCick:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/ChatDialogsView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->disableLongCick:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatDialogsView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatDialogsView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatDialogsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->avatarSize:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatDialogsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->textSize:I

    return v0
.end method


# virtual methods
.method public btnPressed()V
    .registers 5

    .prologue
    .line 297
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->delegate:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

    if-eqz v0, :cond_b

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->delegate:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;->didPressedOnBtn(Z)V

    .line 300
    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    if-nez v0, :cond_1e

    .line 301
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/telegram/ui/Components/ChatDialogsView$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatDialogsView$9;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 307
    :cond_1e
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_23
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    .line 308
    return-void

    .line 307
    :cond_26
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public changeDialogType()V
    .registers 8

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v4, 0x0

    .line 204
    iget v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    packed-switch v1, :pswitch_data_f8

    .line 258
    :pswitch_a
    iput v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    .line 259
    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 262
    :cond_e
    :goto_e
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_17

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 265
    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_20

    .line 266
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->scrollToPosition(I)V

    .line 268
    :cond_20
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    check-cast v1, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;

    if-eqz v1, :cond_33

    .line 269
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    check-cast v1, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;

    # invokes: Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->getTitleRes()I
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->access$500(Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 271
    :cond_33
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 273
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 274
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 275
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 276
    new-instance v1, Lorg/telegram/ui/Components/ChatDialogsView$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatDialogsView$8;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 287
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "plusconfig"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "quickBarDialogType"

    iget v3, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    return-void

    .line 206
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :pswitch_6f
    const/16 v1, 0x8

    iput v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    .line 207
    const/16 v1, 0x8

    sput v1, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 208
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 209
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->changeDialogType()V

    goto :goto_e

    .line 214
    :pswitch_87
    iput v3, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    .line 215
    sput v3, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 216
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 217
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->changeDialogType()V

    goto/16 :goto_e

    .line 222
    :pswitch_9c
    const/4 v1, 0x7

    iput v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    .line 223
    const/4 v1, 0x7

    sput v1, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 224
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 225
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->changeDialogType()V

    goto/16 :goto_e

    .line 230
    :pswitch_b3
    iput v6, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    .line 231
    sput v6, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 232
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 233
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->changeDialogType()V

    goto/16 :goto_e

    .line 238
    :pswitch_c8
    iput v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    .line 239
    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    goto/16 :goto_e

    .line 242
    :pswitch_ce
    iput v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    .line 243
    sput v5, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 244
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 245
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->changeDialogType()V

    goto/16 :goto_e

    .line 250
    :pswitch_e3
    iput v2, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    .line 251
    sput v2, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 252
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 253
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->changeDialogType()V

    goto/16 :goto_e

    .line 204
    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_a
        :pswitch_a
        :pswitch_87
        :pswitch_9c
        :pswitch_b3
        :pswitch_c8
        :pswitch_ce
        :pswitch_e3
    .end packed-switch
.end method

.method public getListHeight()I
    .registers 2

    .prologue
    .line 333
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listHeight:I

    return v0
.end method

.method public getListWidth()I
    .registers 2

    .prologue
    .line 337
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listWidth:I

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    return v0
.end method

.method public needRefresh(Z)V
    .registers 2
    .param p1, "refresh"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->refresh:Z

    .line 322
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 312
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->refresh:Z

    if-eqz v0, :cond_13

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_10

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 316
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->refresh:Z

    .line 318
    :cond_13
    return-void
.end method

.method public refreshList()V
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_9

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 294
    :cond_9
    return-void
.end method

.method public setBtnResId(I)V
    .registers 3
    .param p1, "res"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

    .prologue
    .line 200
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->delegate:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

    .line 201
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 329
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    .line 330
    return-void
.end method
