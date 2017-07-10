.class public Lorg/telegram/ui/CallLogActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "CallLogActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/CallLogActivity$CallLogRow;,
        Lorg/telegram/ui/CallLogActivity$ViewItem;,
        Lorg/telegram/ui/CallLogActivity$ListAdapter;,
        Lorg/telegram/ui/CallLogActivity$CustomCell;
    }
.end annotation


# static fields
.field private static final TYPE_IN:I = 0x1

.field private static final TYPE_MISSED:I = 0x2

.field private static final TYPE_OUT:I


# instance fields
.field private callBtnClickListener:Landroid/view/View$OnClickListener;

.field private calls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/CallLogActivity$CallLogRow;",
            ">;"
        }
    .end annotation
.end field

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private endReached:Z

.field private firstLoaded:Z

.field private floatingButton:Landroid/widget/ImageView;

.field private floatingHidden:Z

.field private final floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private greenDrawable:Landroid/graphics/drawable/Drawable;

.field private greenDrawable2:Landroid/graphics/drawable/Drawable;

.field private iconIn:Landroid/text/style/ImageSpan;

.field private iconMissed:Landroid/text/style/ImageSpan;

.field private iconOut:Landroid/text/style/ImageSpan;

.field private lastCallUser:Lorg/telegram/tgnet/TLRPC$User;

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/CallLogActivity$ListAdapter;

.field private loading:Z

.field private prevPosition:I

.field private prevTop:I

.field private redDrawable:Landroid/graphics/drawable/Drawable;

.field private scrollUpdated:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 146
    new-instance v0, Lorg/telegram/ui/CallLogActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CallLogActivity$1;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->callBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/CallLogActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/CallLogActivity;->prevPosition:I

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/CallLogActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lorg/telegram/ui/CallLogActivity;->prevPosition:I

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$User;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity;->lastCallUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/CallLogActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/CallLogActivity;->prevTop:I

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/CallLogActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lorg/telegram/ui/CallLogActivity;->prevTop:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/CallLogActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/telegram/ui/CallLogActivity;->scrollUpdated:Z

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/CallLogActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lorg/telegram/ui/CallLogActivity;->scrollUpdated:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/CallLogActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity;->hideFloatingButton(Z)V

    return-void
.end method

.method static synthetic access$1402(Lorg/telegram/ui/CallLogActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lorg/telegram/ui/CallLogActivity;->firstLoaded:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/CallLogActivity;)Landroid/view/View$OnClickListener;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->callBtnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/CallLogActivity;)Landroid/text/style/ImageSpan;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->iconOut:Landroid/text/style/ImageSpan;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/CallLogActivity;)Landroid/text/style/ImageSpan;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->iconIn:Landroid/text/style/ImageSpan;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/CallLogActivity;)Landroid/text/style/ImageSpan;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->iconMissed:Landroid/text/style/ImageSpan;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/CallLogActivity$CallLogRow;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;
    .param p1, "x1"    # Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity;->confirmAndDelete(Lorg/telegram/ui/CallLogActivity$CallLogRow;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/CallLogActivity$ListAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listViewAdapter:Lorg/telegram/ui/CallLogActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/CallLogActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/telegram/ui/CallLogActivity;->endReached:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/CallLogActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lorg/telegram/ui/CallLogActivity;->endReached:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/CallLogActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/telegram/ui/CallLogActivity;->loading:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/CallLogActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lorg/telegram/ui/CallLogActivity;->loading:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/CallLogActivity;II)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CallLogActivity;->getCalls(II)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/CallLogActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private confirmAndDelete(Lorg/telegram/ui/CallLogActivity$CallLogRow;)V
    .registers 5
    .param p1, "row"    # Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .prologue
    .line 432
    invoke-virtual {p0}, Lorg/telegram/ui/CallLogActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 450
    :goto_6
    return-void

    .line 434
    :cond_7
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/CallLogActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "AppName"

    const v2, 0x7f070092

    .line 435
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "ConfirmDeleteCallLog"

    const v2, 0x7f07018d

    .line 436
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Delete"

    const v2, 0x7f0701c7

    .line 437
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CallLogActivity$9;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/CallLogActivity$9;-><init>(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/CallLogActivity$CallLogRow;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    .line 447
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 449
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_6
.end method

.method private getCalls(II)V
    .registers 8
    .param p1, "max_id"    # I
    .param p2, "count"    # I

    .prologue
    .line 356
    iget-boolean v2, p0, Lorg/telegram/ui/CallLogActivity;->loading:Z

    if-eqz v2, :cond_5

    .line 429
    :goto_4
    return-void

    .line 359
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/CallLogActivity;->loading:Z

    .line 360
    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v2, :cond_15

    iget-boolean v2, p0, Lorg/telegram/ui/CallLogActivity;->firstLoaded:Z

    if-nez v2, :cond_15

    .line 361
    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 363
    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity;->listViewAdapter:Lorg/telegram/ui/CallLogActivity$ListAdapter;

    if-eqz v2, :cond_1e

    .line 364
    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity;->listViewAdapter:Lorg/telegram/ui/CallLogActivity$ListAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->notifyDataSetChanged()V

    .line 366
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 367
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 368
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 369
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 370
    const-string v2, ""

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 371
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    .line 372
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/CallLogActivity$8;

    invoke-direct {v3, p0}, Lorg/telegram/ui/CallLogActivity$8;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v1

    .line 428
    .local v1, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/CallLogActivity;->classGuid:I

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_4
.end method

.method private hideFloatingButton(Z)V
    .registers 9
    .param p1, "hide"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 345
    iget-boolean v1, p0, Lorg/telegram/ui/CallLogActivity;->floatingHidden:Z

    if-ne v1, p1, :cond_7

    .line 353
    :goto_6
    return-void

    .line 348
    :cond_7
    iput-boolean p1, p0, Lorg/telegram/ui/CallLogActivity;->floatingHidden:Z

    .line 349
    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    const-string v5, "translationY"

    new-array v6, v2, [F

    iget-boolean v1, p0, Lorg/telegram/ui/CallLogActivity;->floatingHidden:Z

    if-eqz v1, :cond_37

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    :goto_1a
    aput v1, v6, v3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 350
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 351
    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    if-nez p1, :cond_39

    move v1, v2

    :goto_30
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 352
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_6

    .line 349
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_37
    const/4 v1, 0x0

    goto :goto_1a

    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_39
    move v1, v3

    .line 351
    goto :goto_30
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/telegram/ui/CallLogActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->greenDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->greenDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/CallLogActivity;->greenDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity;->greenDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->greenDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "calls_callReceivedGreenIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 177
    new-instance v0, Landroid/text/style/ImageSpan;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->greenDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->iconOut:Landroid/text/style/ImageSpan;

    .line 178
    invoke-virtual {p0}, Lorg/telegram/ui/CallLogActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->greenDrawable2:Landroid/graphics/drawable/Drawable;

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->greenDrawable2:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/CallLogActivity;->greenDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity;->greenDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->greenDrawable2:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "calls_callReceivedGreenIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 181
    new-instance v0, Landroid/text/style/ImageSpan;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->greenDrawable2:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->iconIn:Landroid/text/style/ImageSpan;

    .line 182
    invoke-virtual {p0}, Lorg/telegram/ui/CallLogActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->redDrawable:Landroid/graphics/drawable/Drawable;

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->redDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/CallLogActivity;->redDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity;->redDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->redDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "calls_callReceivedRedIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 185
    new-instance v0, Landroid/text/style/ImageSpan;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->redDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->iconMissed:Landroid/text/style/ImageSpan;

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "Calls"

    const v2, 0x7f0700fb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/CallLogActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CallLogActivity$2;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 199
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->fragmentView:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->fragmentView:Landroid/view/View;

    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 201
    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity;->fragmentView:Landroid/view/View;

    check-cast v10, Landroid/widget/FrameLayout;

    .line 203
    .local v10, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v0, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string v1, "NoCallLog"

    const v2, 0x7f070353

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lorg/telegram/ui/CallLogActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/CallLogActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/CallLogActivity$ListAdapter;-><init>(Lorg/telegram/ui/CallLogActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listViewAdapter:Lorg/telegram/ui/CallLogActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 211
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2c0

    const/4 v0, 0x1

    :goto_158
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollbarPosition(I)V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/CallLogActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CallLogActivity$3;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/CallLogActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CallLogActivity$4;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/CallLogActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CallLogActivity$5;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 287
    iget-boolean v0, p0, Lorg/telegram/ui/CallLogActivity;->loading:Z

    if-eqz v0, :cond_2c3

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 294
    :goto_18e
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 298
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const-string v1, "chats_actionBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "chats_actionPressedBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 299
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1f0

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 301
    .local v11, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 302
    new-instance v8, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v8, v11, v9, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 303
    .local v8, "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 304
    move-object v9, v8

    .line 306
    .end local v8    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v11    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1f0
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chats_actionIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_285

    .line 310
    new-instance v7, Landroid/animation/StateListAnimator;

    invoke-direct {v7}, Landroid/animation/StateListAnimator;-><init>()V

    .line 311
    .local v7, "animator":Landroid/animation/StateListAnimator;
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    const-string v2, "translationZ"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 312
    const/4 v0, 0x0

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    const-string v2, "translationZ"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/CallLogActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CallLogActivity$6;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 322
    .end local v7    # "animator":Landroid/animation/StateListAnimator;
    :cond_285
    iget-object v12, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2ca

    const/16 v0, 0x38

    :goto_28f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2cd

    const/high16 v1, 0x42600000    # 56.0f

    :goto_297
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2d0

    const/4 v2, 0x3

    :goto_29c
    or-int/lit8 v2, v2, 0x50

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2d2

    const/high16 v3, 0x41600000    # 14.0f

    :goto_2a4
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2d4

    const/4 v5, 0x0

    :goto_2aa
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/CallLogActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CallLogActivity$7;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 211
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2c0
    const/4 v0, 0x2

    goto/16 :goto_158

    .line 290
    :cond_2c3
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto/16 :goto_18e

    .line 322
    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2ca
    const/16 v0, 0x3c

    goto :goto_28f

    :cond_2cd
    const/high16 v1, 0x42700000    # 60.0f

    goto :goto_297

    :cond_2d0
    const/4 v2, 0x5

    goto :goto_29c

    :cond_2d2
    const/4 v3, 0x0

    goto :goto_2a4

    :cond_2d4
    const/high16 v5, 0x41600000    # 14.0f

    goto :goto_2aa
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 19
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 90
    sget v12, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    move/from16 v0, p1

    if-ne v0, v12, :cond_cb

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/CallLogActivity;->firstLoaded:Z

    if-eqz v12, :cond_cb

    .line 91
    const/4 v12, 0x1

    aget-object v1, p2, v12

    check-cast v1, Ljava/util/ArrayList;

    .line 92
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_15
    :goto_15
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 93
    .local v6, "msg":Lorg/telegram/messenger/MessageObject;
    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v13, :cond_15

    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    if-eqz v13, :cond_15

    .line 94
    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v14

    if-ne v13, v14, :cond_8c

    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v11, v13, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 95
    .local v11, "userID":I
    :goto_3f
    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v14

    if-ne v13, v14, :cond_91

    const/4 v2, 0x0

    .line 96
    .local v2, "callType":I
    :goto_4a
    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v8, v13, Lorg/telegram/tgnet/TLRPC$MessageAction;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 97
    .local v8, "reason":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    const/4 v13, 0x1

    if-ne v2, v13, :cond_5c

    instance-of v13, v8, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    if-nez v13, :cond_5b

    instance-of v13, v8, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    if-eqz v13, :cond_5c

    .line 98
    :cond_5b
    const/4 v2, 0x2

    .line 100
    :cond_5c
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_93

    .line 101
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .line 102
    .local v10, "topRow":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    iget-object v13, v10, Lorg/telegram/ui/CallLogActivity$CallLogRow;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-ne v13, v11, :cond_93

    iget v13, v10, Lorg/telegram/ui/CallLogActivity$CallLogRow;->type:I

    if-ne v13, v2, :cond_93

    .line 103
    iget-object v13, v10, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    const/4 v14, 0x0

    iget-object v15, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {v13, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CallLogActivity;->listViewAdapter:Lorg/telegram/ui/CallLogActivity$ListAdapter;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->notifyItemChanged(I)V

    goto :goto_15

    .line 94
    .end local v2    # "callType":I
    .end local v8    # "reason":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    .end local v10    # "topRow":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    .end local v11    # "userID":I
    :cond_8c
    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v11, v13, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto :goto_3f

    .line 95
    .restart local v11    # "userID":I
    :cond_91
    const/4 v2, 0x1

    goto :goto_4a

    .line 108
    .restart local v2    # "callType":I
    .restart local v8    # "reason":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    :cond_93
    new-instance v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13}, Lorg/telegram/ui/CallLogActivity$CallLogRow;-><init>(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/CallLogActivity$1;)V

    .line 109
    .local v9, "row":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    .line 110
    iget-object v13, v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    iget-object v14, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    iput-object v13, v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 112
    iput v2, v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;->type:I

    .line 113
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/CallLogActivity;->listViewAdapter:Lorg/telegram/ui/CallLogActivity$ListAdapter;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->notifyItemInserted(I)V

    goto/16 :goto_15

    .line 117
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "callType":I
    .end local v6    # "msg":Lorg/telegram/messenger/MessageObject;
    .end local v8    # "reason":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    .end local v9    # "row":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    .end local v11    # "userID":I
    :cond_cb
    sget v12, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    move/from16 v0, p1

    if-ne v0, v12, :cond_12f

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/CallLogActivity;->firstLoaded:Z

    if-eqz v12, :cond_12f

    .line 118
    const/4 v3, 0x0

    .line 119
    .local v3, "didChange":Z
    const/4 v12, 0x0

    aget-object v4, p2, v12

    check-cast v4, Ljava/util/ArrayList;

    .line 120
    .local v4, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 121
    .local v5, "itrtr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/telegram/ui/CallLogActivity$CallLogRow;>;"
    :cond_e5
    :goto_e5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_120

    .line 122
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .line 123
    .restart local v9    # "row":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    iget-object v12, v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 124
    .local v7, "msgs":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_f7
    :goto_f7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_114

    .line 125
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    .line 126
    .local v6, "msg":Lorg/telegram/tgnet/TLRPC$Message;
    iget v12, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f7

    .line 127
    const/4 v3, 0x1

    .line 128
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_f7

    .line 131
    .end local v6    # "msg":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_114
    iget-object v12, v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_e5

    .line 132
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_e5

    .line 134
    .end local v7    # "msgs":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v9    # "row":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    :cond_120
    if-eqz v3, :cond_12f

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CallLogActivity;->listViewAdapter:Lorg/telegram/ui/CallLogActivity$ListAdapter;

    if-eqz v12, :cond_12f

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/CallLogActivity;->listViewAdapter:Lorg/telegram/ui/CallLogActivity$ListAdapter;

    invoke-virtual {v12}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->notifyDataSetChanged()V

    .line 137
    .end local v3    # "didChange":Z
    .end local v4    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "itrtr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/telegram/ui/CallLogActivity$CallLogRow;>;"
    :cond_12f
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 13

    .prologue
    .line 592
    new-instance v9, Lorg/telegram/ui/CallLogActivity$10;

    invoke-direct {v9, p0}, Lorg/telegram/ui/CallLogActivity$10;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    .line 605
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x20

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/CallLogActivity$CustomCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "emptyListPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "progressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "progressBar"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "progressCircle"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v10, v8

    const/16 v11, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v10, v11

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_actionIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_actionBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_actionPressedBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "chats_verifiedCheck"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "chats_verifiedBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteBlueText3"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_name"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "avatar_text"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundRed"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundOrange"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundViolet"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundGreen"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundCyan"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundBlue"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundPink"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/CallLogActivity;->greenDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/telegram/ui/CallLogActivity;->greenDrawable2:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgCallUpRedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgCallDownRedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "calls_callReceivedGreenIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/CallLogActivity;->redDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgCallUpGreenDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgCallDownGreenDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "calls_callReceivedRedIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    return-object v10
.end method

.method public onFragmentCreate()Z
    .registers 3

    .prologue
    .line 156
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 157
    const/4 v0, 0x0

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/CallLogActivity;->getCalls(II)V

    .line 159
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 160
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 167
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 168
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 169
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 170
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 462
    const/16 v0, 0x65

    if-ne p1, v0, :cond_16

    .line 463
    array-length v0, p3

    if-lez v0, :cond_17

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_17

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->lastCallUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p0}, Lorg/telegram/ui/CallLogActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_userFull;)V

    .line 469
    :cond_16
    :goto_16
    return-void

    .line 466
    :cond_17
    invoke-virtual {p0}, Lorg/telegram/ui/CallLogActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/voip/VoIPHelper;->permissionDenied(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_16
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 454
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listViewAdapter:Lorg/telegram/ui/CallLogActivity$ListAdapter;

    if-eqz v0, :cond_c

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listViewAdapter:Lorg/telegram/ui/CallLogActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->notifyDataSetChanged()V

    .line 458
    :cond_c
    return-void
.end method
