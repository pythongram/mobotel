.class public Lorg/telegram/ui/Telehgram/DeleteContactActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "DeleteContactActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/DeleteContactActivity$GroupCreateActivityDelegate;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private allSpans:Ljava/util/ArrayList;

.field private beforeChangeIndex:I

.field private changeString:Ljava/lang/CharSequence;

.field private chatType:I

.field private delegate:Lorg/telegram/ui/Telehgram/DeleteContactActivity$GroupCreateActivityDelegate;

.field private emptyTextView:Landroid/widget/TextView;

.field private ignoreChange:Z

.field private isAlwaysShare:Z

.field private isGroup:Z

.field private isNeverShare:Z

.field private listView:Lorg/telegram/ui/Components/LetterSectionsListView;

.field private listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

.field private maxCount:I

.field private searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

.field private searchWas:Z

.field private searching:Z

.field private selectedContacts:Ljava/util/HashMap;

.field selectedUsers:Ljava/util/ArrayList;

.field private userSelectEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->allSpans:Ljava/util/ArrayList;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->chatType:I

    .line 77
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->maxCount:I

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedContacts:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedUsers:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->allSpans:Ljava/util/ArrayList;

    .line 68
    iput v1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->chatType:I

    .line 77
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->maxCount:I

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedContacts:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedUsers:Ljava/util/ArrayList;

    .line 94
    const-string v0, "chatType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->chatType:I

    .line 95
    const-string v0, "isAlwaysShare"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->isAlwaysShare:Z

    .line 96
    const-string v0, "isNeverShare"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->isNeverShare:Z

    .line 97
    const-string v0, "isGroup"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->isGroup:Z

    .line 98
    iget v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->chatType:I

    if-nez v0, :cond_4c

    .line 99
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->maxCount:I

    .line 104
    :goto_4b
    return-void

    .line 101
    :cond_4c
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->maxBroadcastCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->maxCount:I

    goto :goto_4b
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->ignoreChange:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->ignoreChange:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->emptyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->maxCount:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->chatType:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->createAndPutChipForUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->changeString:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->changeString:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->beforeChangeIndex:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Telehgram/DeleteContactActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->beforeChangeIndex:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searching:Z

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searching:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Telehgram/DeleteContactActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->allSpans:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedContacts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    return-object v0
.end method

.method private createAndPutChipForUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;
    .registers 18
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedUsers:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    const v13, 0x7f030028

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 109
    .local v11, "view":Landroid/view/View;
    const v12, 0x7f0e00d4

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 110
    .local v10, "textView":Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_5d

    .line 112
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v12, :cond_5d

    .line 113
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_5d

    .line 114
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "+"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 119
    :cond_5d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 121
    .local v7, "measureSpec":I
    invoke-virtual {v11, v7, v7}, Landroid/view/View;->measure(II)V

    .line 122
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 123
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 124
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v11}, Landroid/view/View;->getScrollX()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v11}, Landroid/view/View;->getScrollY()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v3, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 126
    invoke-virtual {v11, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 127
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 128
    invoke-virtual {v11}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 129
    invoke-virtual {v11}, Landroid/view/View;->destroyDrawingCache()V

    .line 130
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .local v2, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 132
    new-instance v9, Landroid/text/SpannableStringBuilder;

    const-string v12, ""

    invoke-direct {v9, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    .local v9, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v4, Lorg/telegram/ui/Components/ChipSpan;

    const/4 v12, 0x1

    invoke-direct {v4, v2, v12}, Lorg/telegram/ui/Components/ChipSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 134
    .local v4, "chipSpan":Lorg/telegram/ui/Components/ChipSpan;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedContacts:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v13, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 138
    .local v6, "iterator":Ljava/util/Iterator;
    :goto_fc
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11d

    .line 139
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/style/ImageSpan;

    .line 140
    .local v5, "imageSpan":Landroid/text/style/ImageSpan;
    const-string v12, "<<"

    invoke-virtual {v9, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 141
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-virtual {v9, v5, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_fc

    .line 144
    .end local v5    # "imageSpan":Landroid/text/style/ImageSpan;
    :cond_11d
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    invoke-virtual {v12, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setSelection(I)V

    .line 146
    return-object v4
.end method

.method private updateTheme()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 548
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "theme"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 549
    .local v6, "themePrefs":Landroid/content/SharedPreferences;
    const-string v8, "themeColor"

    const v9, -0xad8a64

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 551
    .local v1, "def":I
    const-string v8, "contactsHeaderColor"

    invoke-interface {v6, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 552
    .local v5, "hColor":I
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 553
    const-string v8, "contactsHeaderGradient"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 554
    .local v7, "val":I
    if-lez v7, :cond_42

    .line 556
    packed-switch v7, :pswitch_data_58

    .line 567
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 569
    .local v3, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_2a
    const-string v8, "contactsHeaderGradientColor"

    invoke-interface {v6, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 570
    .local v4, "gradColor":I
    const/4 v8, 0x2

    new-array v0, v8, [I

    aput v5, v0, v10

    const/4 v8, 0x1

    aput v4, v0, v8

    .line 571
    .local v0, "colors":[I
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 572
    .local v2, "gd":Landroid/graphics/drawable/GradientDrawable;
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 575
    .end local v0    # "colors":[I
    .end local v2    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v4    # "gradColor":I
    :cond_42
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v9, "contactsHeaderTitleColor"

    const/4 v10, -0x1

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 579
    return-void

    .line 558
    :pswitch_4f
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 559
    .restart local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_2a

    .line 561
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_52
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 562
    .restart local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_2a

    .line 564
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_55
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 565
    .restart local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_2a

    .line 556
    :pswitch_data_58
    .packed-switch 0x2
        :pswitch_4f
        :pswitch_52
        :pswitch_55
    .end packed-switch
.end method

.method private updateVisibleRows(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 150
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    if-eqz v3, :cond_1f

    .line 151
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildCount()I

    move-result v0

    .line 153
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_1f

    .line 154
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 155
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_1c

    .line 156
    check-cast v2, Lorg/telegram/ui/Cells/UserCell;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    .line 153
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 161
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 21
    .param p1, "var1"    # Landroid/content/Context;

    .prologue
    .line 164
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 165
    .local v11, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 166
    .local v9, "back":Landroid/graphics/drawable/Drawable;
    const-string v2, "contactsHeaderIconsColor"

    const/4 v3, -0x1

    invoke-interface {v11, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020114

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 168
    .local v10, "done":Landroid/graphics/drawable/Drawable;
    const-string v2, "contactsHeaderIconsColor"

    const/4 v3, -0x1

    invoke-interface {v11, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 169
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searching:Z

    .line 170
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchWas:Z

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 173
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->isAlwaysShare:Z

    if-eqz v2, :cond_317

    .line 174
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->isGroup:Z

    if-eqz v2, :cond_305

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "AlwaysAllow"

    const v4, 0x7f070080

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    :goto_74
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/Telehgram/DeleteContactActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Telehgram/DeleteContactActivity$1;-><init>(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 211
    new-instance v2, Lorg/telegram/ui/Adapters/SearchAdapter;

    const/4 v4, 0x0

    check-cast v4, Ljava/util/HashMap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Adapters/SearchAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;ZZZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/SearchAdapter;->setCheckedMap(Ljava/util/HashMap;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/SearchAdapter;->setUseUserCell(Z)V

    .line 214
    new-instance v2, Lorg/telegram/ui/Adapters/ContactsAdapter;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    check-cast v6, Ljava/util/HashMap;

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Adapters/ContactsAdapter;-><init>(Landroid/content/Context;IZLjava/util/HashMap;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setCheckedMap(Ljava/util/HashMap;)V

    .line 216
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->fragmentView:Landroid/view/View;

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->fragmentView:Landroid/view/View;

    check-cast v13, Landroid/widget/LinearLayout;

    .line 218
    .local v13, "var3":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    new-instance v14, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 220
    .local v14, "var4":Landroid/widget/FrameLayout;
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const v3, -0x686869

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const v3, -0xdededf

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const v3, 0xa00b0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLines(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHorizontalScrollBarEnabled(Z)V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const v3, 0x10000006

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    .line 236
    .local v15, "var5":Landroid/widget/EditText;
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_359

    .line 237
    const/4 v12, 0x5

    .line 242
    .local v12, "var2":B
    :goto_17a
    or-int/lit8 v2, v12, 0x10

    invoke-virtual {v15, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 246
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->isAlwaysShare:Z

    if-eqz v2, :cond_36e

    .line 247
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->isGroup:Z

    if-eqz v2, :cond_35c

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const-string v3, "AlwaysAllowPlaceholder"

    const v4, 0x7f070081

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 262
    :goto_1c9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1d7

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 266
    :cond_1d7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Telehgram/DeleteContactActivity$2;-><init>(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 366
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 367
    .local v17, "var7":Landroid/widget/LinearLayout;
    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 369
    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    new-instance v2, Lorg/telegram/ui/Telehgram/DeleteContactActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Telehgram/DeleteContactActivity$3;-><init>(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 375
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->emptyTextView:Landroid/widget/TextView;

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->emptyTextView:Landroid/widget/TextView;

    const v3, -0x7f7f80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v3, "NoContacts"

    const v4, 0x7f070356

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->emptyTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    new-instance v2, Lorg/telegram/ui/Components/LetterSectionsListView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/LetterSectionsListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->setEmptyView(Landroid/view/View;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v2, 0x0

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setDividerHeight(I)V

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setScrollBarStyle(I)V

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 390
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2d7

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    move-object/from16 v16, v0

    .line 393
    .local v16, "var6":Lorg/telegram/ui/Components/LetterSectionsListView;
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3b0

    .line 394
    const/4 v12, 0x1

    .line 399
    :goto_2d2
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollbarPosition(I)V

    .line 402
    .end local v16    # "var6":Lorg/telegram/ui/Components/LetterSectionsListView;
    :cond_2d7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    new-instance v3, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Telehgram/DeleteContactActivity$4;-><init>(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    new-instance v3, Lorg/telegram/ui/Telehgram/DeleteContactActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Telehgram/DeleteContactActivity$5;-><init>(Lorg/telegram/ui/Telehgram/DeleteContactActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->fragmentView:Landroid/view/View;

    return-object v2

    .line 177
    .end local v12    # "var2":B
    .end local v13    # "var3":Landroid/widget/LinearLayout;
    .end local v14    # "var4":Landroid/widget/FrameLayout;
    .end local v15    # "var5":Landroid/widget/EditText;
    .end local v17    # "var7":Landroid/widget/LinearLayout;
    :cond_305
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "AlwaysShareWithTitle"

    const v4, 0x7f070084

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 179
    :cond_317
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->isNeverShare:Z

    if-eqz v2, :cond_347

    .line 180
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->isGroup:Z

    if-eqz v2, :cond_335

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "NeverAllow"

    const v4, 0x7f07033c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 183
    :cond_335
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "NeverShareWithTitle"

    const v4, 0x7f070340

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 186
    :cond_347
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "DeleteContacts"

    const v4, 0x7f0706ae

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 239
    .restart local v13    # "var3":Landroid/widget/LinearLayout;
    .restart local v14    # "var4":Landroid/widget/FrameLayout;
    .restart local v15    # "var5":Landroid/widget/EditText;
    :cond_359
    const/4 v12, 0x3

    .restart local v12    # "var2":B
    goto/16 :goto_17a

    .line 250
    :cond_35c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const-string v3, "AlwaysShareWithPlaceholder"

    const v4, 0x7f070083

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c9

    .line 252
    :cond_36e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->isNeverShare:Z

    if-eqz v2, :cond_39e

    .line 253
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->isGroup:Z

    if-eqz v2, :cond_38c

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const-string v3, "NeverAllowPlaceholder"

    const v4, 0x7f07033d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c9

    .line 256
    :cond_38c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const-string v3, "NeverShareWithPlaceholder"

    const v4, 0x7f07033f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c9

    .line 259
    :cond_39e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;

    const-string v3, "DeleteContacts"

    const v4, 0x7f0706ae

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c9

    .line 396
    .restart local v16    # "var6":Lorg/telegram/ui/Components/LetterSectionsListView;
    .restart local v17    # "var7":Landroid/widget/LinearLayout;
    :cond_3b0
    const/4 v12, 0x2

    goto/16 :goto_2d2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 519
    sget v0, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    if-ne p1, v0, :cond_e

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz v0, :cond_d

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->notifyDataSetChanged()V

    .line 532
    :cond_d
    :goto_d
    return-void

    .line 523
    :cond_e
    sget v0, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v0, :cond_2b

    .line 524
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 525
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_27

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_27

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_d

    .line 526
    :cond_27
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->updateVisibleRows(I)V

    goto :goto_d

    .line 528
    :cond_2b
    sget v0, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    if-ne p1, v0, :cond_d

    .line 529
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->removeSelfFromStack()V

    goto :goto_d
.end method

.method public onFragmentCreate()Z
    .registers 3

    .prologue
    .line 535
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 536
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 537
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 538
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 542
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 543
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 544
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 545
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 546
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 88
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 89
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->updateTheme()V

    .line 90
    const-string v0, "Delete Contact Fragment"

    invoke-static {v0}, Lorg/telegram/ui/Membergram/analytics/AnalyticsEventUtil;->sendScreenName(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Telehgram/DeleteContactActivity$GroupCreateActivityDelegate;)V
    .registers 2
    .param p1, "var1"    # Lorg/telegram/ui/Telehgram/DeleteContactActivity$GroupCreateActivityDelegate;

    .prologue
    .line 581
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/DeleteContactActivity;->delegate:Lorg/telegram/ui/Telehgram/DeleteContactActivity$GroupCreateActivityDelegate;

    .line 582
    return-void
.end method
