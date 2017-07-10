.class public abstract Lcom/androidquery/AbstractAQuery;
.super Ljava/lang/Object;
.source "AbstractAQuery.java"

# interfaces
.implements Lcom/androidquery/util/Constants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/androidquery/AbstractAQuery",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/androidquery/util/Constants;"
    }
.end annotation


# static fields
.field private static LAYER_TYPE_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ON_CLICK_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static ON_ITEM_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static ON_SCROLLED_STATE_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final OVER_SCROLL_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static PENDING_TRANSITION_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TEXT_CHANGE_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static dialogs:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/app/Dialog;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private act:Landroid/app/Activity;

.field protected ah:Lcom/androidquery/auth/AccountHandle;

.field private constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private policy:I

.field protected progress:Ljava/lang/Object;

.field private proxy:Lorg/apache/http/HttpHost;

.field private root:Landroid/view/View;

.field private trans:Lcom/androidquery/callback/Transformer;

.field protected view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1387
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Landroid/view/View;

    aput-object v1, v0, v2

    sput-object v0, Lcom/androidquery/AbstractAQuery;->ON_CLICK_SIG:[Ljava/lang/Class;

    .line 1450
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Landroid/widget/AdapterView;

    aput-object v1, v0, v2

    const-class v1, Landroid/view/View;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sput-object v0, Lcom/androidquery/AbstractAQuery;->ON_ITEM_SIG:[Ljava/lang/Class;

    .line 1572
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/widget/AbsListView;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidquery/AbstractAQuery;->ON_SCROLLED_STATE_SIG:[Ljava/lang/Class;

    .line 1620
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sput-object v0, Lcom/androidquery/AbstractAQuery;->TEXT_CHANGE_SIG:[Ljava/lang/Class;

    .line 1643
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidquery/AbstractAQuery;->PENDING_TRANSITION_SIG:[Ljava/lang/Class;

    .line 1661
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/androidquery/AbstractAQuery;->OVER_SCROLL_SIG:[Ljava/lang/Class;

    .line 1678
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/graphics/Paint;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidquery/AbstractAQuery;->LAYER_TYPE_SIG:[Ljava/lang/Class;

    .line 2586
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 151
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidquery/AbstractAQuery;->policy:I

    .line 152
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    .line 171
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidquery/AbstractAQuery;->policy:I

    .line 172
    iput-object p2, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    .line 173
    iput-object p2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 174
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidquery/AbstractAQuery;->policy:I

    .line 185
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->context:Landroid/content/Context;

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 160
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidquery/AbstractAQuery;->policy:I

    .line 161
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    .line 162
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 163
    return-void
.end method

.method private findView(I)Landroid/view/View;
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 189
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 190
    .local v0, "result":Landroid/view/View;
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    if-eqz v1, :cond_c

    .line 191
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 195
    :cond_b
    :goto_b
    return-object v0

    .line 192
    :cond_c
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v1, :cond_b

    .line 193
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_b
.end method

.method private findView(Ljava/lang/String;)Landroid/view/View;
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 201
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 202
    .local v0, "result":Landroid/view/View;
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    if-eqz v2, :cond_c

    .line 203
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 211
    :cond_b
    :goto_b
    return-object v0

    .line 204
    :cond_c
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v2, :cond_b

    .line 206
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "top":Landroid/view/View;
    if-eqz v1, :cond_b

    .line 208
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_b
.end method

.method private varargs findView([I)Landroid/view/View;
    .registers 5
    .param p1, "path"    # [I

    .prologue
    .line 217
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-direct {p0, v2}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object v1

    .line 219
    .local v1, "result":Landroid/view/View;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_d

    if-nez v1, :cond_e

    .line 223
    :cond_d
    return-object v1

    .line 220
    :cond_e
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private getConstructor()Ljava/lang/reflect/Constructor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->constructor:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_16

    .line 134
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_19

    .line 141
    :cond_16
    :goto_16
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->constructor:Ljava/lang/reflect/Constructor;

    return-object v1

    .line 135
    :catch_19
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method private setScrollListener()Lcom/androidquery/util/Common;
    .registers 4

    .prologue
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const v2, 0x40ff0002

    .line 1592
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/AbsListView;

    .line 1594
    .local v1, "lv":Landroid/widget/AbsListView;
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/util/Common;

    .line 1595
    .local v0, "common":Lcom/androidquery/util/Common;
    if-nez v0, :cond_1f

    .line 1596
    new-instance v0, Lcom/androidquery/util/Common;

    .end local v0    # "common":Lcom/androidquery/util/Common;
    invoke-direct {v0}, Lcom/androidquery/util/Common;-><init>()V

    .line 1597
    .restart local v0    # "common":Lcom/androidquery/util/Common;
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1598
    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    .line 1599
    const-string v2, "set scroll listenr"

    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 1602
    :cond_1f
    return-object v0
.end method

.method private size(ZIZ)V
    .registers 7
    .param p1, "width"    # Z
    .param p2, "n"    # I
    .param p3, "dip"    # Z

    .prologue
    .line 1855
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v2, :cond_20

    .line 1857
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1859
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1861
    .local v0, "context":Landroid/content/Context;
    if-lez p2, :cond_17

    if-eqz p3, :cond_17

    .line 1862
    int-to-float v2, p2

    invoke-static {v0, v2}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result p2

    .line 1865
    :cond_17
    if-eqz p1, :cond_21

    .line 1866
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1871
    :goto_1b
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1875
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_20
    return-void

    .line 1868
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_21
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1b
.end method


# virtual methods
.method public adapter(Landroid/widget/Adapter;)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "adapter"    # Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Adapter;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_d

    .line 606
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    .line 607
    .local v0, "av":Landroid/widget/AdapterView;
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 610
    .end local v0    # "av":Landroid/widget/AdapterView;
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public adapter(Landroid/widget/ExpandableListAdapter;)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ExpandableListAdapter;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 621
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_d

    .line 622
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 623
    .local v0, "av":Landroid/widget/ExpandableListView;
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 626
    .end local v0    # "av":Landroid/widget/ExpandableListView;
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidquery/callback/AjaxCallback",
            "<TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1905
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p1, "callback":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->invoke(Lcom/androidquery/callback/AbstractAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;JLcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "expire"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TK;>;J",
            "Lcom/androidquery/callback/AjaxCallback",
            "<TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1990
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p5, "callback":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {p5, p2}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p3, p4}, Lcom/androidquery/callback/AjaxCallback;->expire(J)Ljava/lang/Object;

    .line 1992
    invoke-virtual {p0, p5}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;JLjava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "expire"    # J
    .param p5, "handler"    # Ljava/lang/Object;
    .param p6, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TK;>;J",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2043
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 2044
    .local v0, "cb":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v1, p5, p6}, Lcom/androidquery/callback/AjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v1, p3, p4}, Lcom/androidquery/callback/AjaxCallback;->expire(J)Ljava/lang/Object;

    .line 2046
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Lcom/androidquery/callback/AjaxCallback",
            "<TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1967
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "callback":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {p3, p2}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 1968
    invoke-virtual {p0, p3}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "handler"    # Ljava/lang/Object;
    .param p4, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2015
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 2016
    .local v0, "cb":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v1, p3, p4}, Lcom/androidquery/callback/AjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2018
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Lcom/androidquery/callback/AjaxCallback",
            "<TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2065
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p4, "callback":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {p4, p3}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AjaxCallback;->params(Ljava/util/Map;)Ljava/lang/Object;

    .line 2066
    invoke-virtual {p0, p4}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "handler"    # Ljava/lang/Object;
    .param p5, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2087
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 2088
    .local v0, "cb":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {v0, p3}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v1, p4, p5}, Lcom/androidquery/callback/AjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2090
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public ajaxCancel()Lcom/androidquery/AbstractAQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2228
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-static {}, Lcom/androidquery/callback/AjaxCallback;->cancel()V

    .line 2230
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public animate(I)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "animId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 2512
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androidquery/AbstractAQuery;->animate(ILandroid/view/animation/Animation$AnimationListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public animate(ILandroid/view/animation/Animation$AnimationListener;)Lcom/androidquery/AbstractAQuery;
    .registers 5
    .param p1, "animId"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/animation/Animation$AnimationListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2528
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2529
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2530
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->animate(Landroid/view/animation/Animation;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2544
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 2545
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2547
    :cond_b
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public auth(Lcom/androidquery/auth/AccountHandle;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "handle"    # Lcom/androidquery/auth/AccountHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/auth/AccountHandle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 408
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public background(I)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1083
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1085
    if-eqz p1, :cond_10

    .line 1086
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1093
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0

    .line 1088
    :cond_10
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b
.end method

.method public backgroundColor(I)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1104
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1105
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1108
    :cond_9
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public backgroundColorId(I)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "colorId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1119
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 1120
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1123
    :cond_15
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public cache(Ljava/lang/String;J)Lcom/androidquery/AbstractAQuery;
    .registers 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "expire"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v6, 0x0

    .line 2216
    const-class v3, [B

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/lang/Class;JLjava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public checked(Z)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "checked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 969
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_d

    .line 970
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    .line 971
    .local v0, "cb":Landroid/widget/CompoundButton;
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 974
    .end local v0    # "cb":Landroid/widget/CompoundButton;
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public clear()Lcom/androidquery/AbstractAQuery;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const v5, 0x40ff0001

    const/4 v4, 0x0

    .line 1742
    iget-object v3, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v3, :cond_18

    .line 1744
    iget-object v3, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_1d

    .line 1745
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 1746
    .local v0, "iv":Landroid/widget/ImageView;
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1747
    invoke-virtual {v0, v5, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1761
    .end local v0    # "iv":Landroid/widget/ImageView;
    :cond_18
    :goto_18
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v3

    return-object v3

    .line 1748
    :cond_1d
    iget-object v3, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v3, v3, Landroid/webkit/WebView;

    if-eqz v3, :cond_31

    .line 1749
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v2, Landroid/webkit/WebView;

    .line 1750
    .local v2, "wv":Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->stopLoading()V

    .line 1751
    invoke-virtual {v2}, Landroid/webkit/WebView;->clearView()V

    .line 1752
    invoke-virtual {v2, v5, v4}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    goto :goto_18

    .line 1753
    .end local v2    # "wv":Landroid/webkit/WebView;
    :cond_31
    iget-object v3, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_18

    .line 1754
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 1755
    .local v1, "tv":Landroid/widget/TextView;
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18
.end method

.method public click()Lcom/androidquery/AbstractAQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2561
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 2562
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 2564
    :cond_9
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public clickable(Z)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "clickable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 1002
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1003
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 1006
    :cond_9
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public clicked(Landroid/view/View$OnClickListener;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnClickListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1412
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1413
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1416
    :cond_9
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public clicked(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 7
    .param p1, "handler"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1398
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v2, 0x1

    sget-object v3, Lcom/androidquery/AbstractAQuery;->ON_CLICK_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object v0

    .line 1399
    .local v0, "common":Lcom/androidquery/util/Common;
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->clicked(Landroid/view/View$OnClickListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method protected create(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v3, 0x0

    .line 115
    .local v3, "result":Lcom/androidquery/AbstractAQuery;, "TT;"
    :try_start_1
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 116
    .local v1, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/androidquery/AbstractAQuery;

    move-object v3, v0

    .line 117
    iget-object v4, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    iput-object v4, v3, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    .line 122
    .end local v1    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :goto_17
    return-object v3

    .line 118
    :catch_18
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method public dataChanged()Lcom/androidquery/AbstractAQuery;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1133
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v3, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/AdapterView;

    if-eqz v3, :cond_18

    .line 1135
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/AdapterView;

    .line 1136
    .local v1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1138
    .local v0, "a":Landroid/widget/Adapter;
    instance-of v3, v0, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_18

    move-object v2, v0

    .line 1139
    check-cast v2, Landroid/widget/BaseAdapter;

    .line 1140
    .local v2, "ba":Landroid/widget/BaseAdapter;
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1146
    .end local v0    # "a":Landroid/widget/Adapter;
    .end local v1    # "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local v2    # "ba":Landroid/widget/BaseAdapter;
    :cond_18
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v3

    return-object v3
.end method

.method public delete(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Lcom/androidquery/callback/AjaxCallback",
            "<TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2106
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "callback":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {p3, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxCallback;->method(I)Ljava/lang/Object;

    .line 2107
    invoke-virtual {p0, p3}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "handler"    # Ljava/lang/Object;
    .param p4, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2180
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 2181
    .local v0, "cb":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {v0, p3, p4}, Lcom/androidquery/callback/AjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2183
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->delete(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public dismiss()Lcom/androidquery/AbstractAQuery;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2634
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    sget-object v2, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2636
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/Dialog;>;"
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_15

    .line 2646
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    return-object v2

    .line 2638
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 2640
    .local v0, "d":Landroid/app/Dialog;
    :try_start_1b
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_22

    .line 2643
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 2641
    :catch_22
    move-exception v2

    goto :goto_1e
.end method

.method public dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "dialog"    # Landroid/app/Dialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2616
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    if-eqz p1, :cond_a

    .line 2617
    :try_start_2
    sget-object v0, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2618
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_f

    .line 2623
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0

    .line 2620
    :catch_f
    move-exception v0

    goto :goto_a
.end method

.method public download(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/androidquery/callback/AjaxCallback",
            "<",
            "Ljava/io/File;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 2786
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p3, "cb":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<Ljava/io/File;>;"
    invoke-virtual {p3, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    const-class v1, Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AjaxCallback;->targetFile(Ljava/io/File;)Ljava/lang/Object;

    .line 2787
    invoke-virtual {p0, p3}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/io/File;
    .param p3, "handler"    # Ljava/lang/Object;
    .param p4, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2804
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 2805
    .local v0, "cb":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<Ljava/io/File;>;"
    invoke-virtual {v0, p3, p4}, Lcom/androidquery/callback/AjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2806
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->download(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public enabled(Z)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 954
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 955
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 958
    :cond_9
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public expand(IZ)Lcom/androidquery/AbstractAQuery;
    .registers 5
    .param p1, "position"    # I
    .param p2, "expand"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    .prologue
    .line 2733
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_f

    .line 2735
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 2736
    .local v0, "elv":Landroid/widget/ExpandableListView;
    if-eqz p2, :cond_14

    .line 2737
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 2743
    .end local v0    # "elv":Landroid/widget/ExpandableListView;
    :cond_f
    :goto_f
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1

    .line 2739
    .restart local v0    # "elv":Landroid/widget/ExpandableListView;
    :cond_14
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_f
.end method

.method public expand(Z)Lcom/androidquery/AbstractAQuery;
    .registers 7
    .param p1, "expand"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 2748
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v4, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v4, v4, Landroid/widget/ExpandableListView;

    if-eqz v4, :cond_17

    .line 2750
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/ExpandableListView;

    .line 2751
    .local v2, "elv":Landroid/widget/ExpandableListView;
    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 2753
    .local v1, "ela":Landroid/widget/ExpandableListAdapter;
    if-eqz v1, :cond_17

    .line 2755
    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 2757
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-lt v3, v0, :cond_1c

    .line 2770
    .end local v0    # "count":I
    .end local v1    # "ela":Landroid/widget/ExpandableListAdapter;
    .end local v2    # "elv":Landroid/widget/ExpandableListView;
    .end local v3    # "i":I
    :cond_17
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v4

    return-object v4

    .line 2758
    .restart local v0    # "count":I
    .restart local v1    # "ela":Landroid/widget/ExpandableListAdapter;
    .restart local v2    # "elv":Landroid/widget/ExpandableListView;
    .restart local v3    # "i":I
    :cond_1c
    if-eqz p1, :cond_24

    .line 2759
    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 2757
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 2761
    :cond_24
    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_21
.end method

.method public find(I)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->create(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public getButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 1251
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public getCachedFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2242
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2243
    .local v0, "result":Ljava/io/File;
    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2244
    :cond_1c
    return-object v0
.end method

.method public getCachedImage(I)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 2305
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->getMemoryCached(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCachedImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2271
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androidquery/AbstractAQuery;->getCachedImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCachedImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "targetWidth"    # I

    .prologue
    .line 2284
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-static {p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getMemoryCached(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2285
    .local v1, "result":Landroid/graphics/Bitmap;
    if-nez v1, :cond_17

    .line 2286
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2287
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_17

    .line 2288
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, p2, v4, v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2292
    .end local v0    # "file":Ljava/io/File;
    :cond_17
    return-object v1
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .registers 2

    .prologue
    .line 1260
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1886
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 1887
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    .line 1892
    :goto_6
    return-object v0

    .line 1889
    :cond_7
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 1890
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_6

    .line 1892
    :cond_12
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->context:Landroid/content/Context;

    goto :goto_6
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 1223
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public getEditable()Landroid/text/Editable;
    .registers 3

    .prologue
    .line 1324
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 1326
    .local v0, "result":Landroid/text/Editable;
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_f

    .line 1327
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 1330
    :cond_f
    return-object v0
.end method

.method public getExpandableListView()Landroid/widget/ExpandableListView;
    .registers 2

    .prologue
    .line 1278
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public getGallery()Landroid/widget/Gallery;
    .registers 2

    .prologue
    .line 1203
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Gallery;

    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .registers 2

    .prologue
    .line 1287
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 1194
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 1269
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 1232
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getRatingBar()Landroid/widget/RatingBar;
    .registers 2

    .prologue
    .line 1296
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/RatingBar;

    return-object v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .registers 2

    .prologue
    .line 1242
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1356
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 1358
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_f

    .line 1359
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 1362
    .end local v0    # "result":Ljava/lang/Object;
    :cond_f
    return-object v0
.end method

.method public getSelectedItemPosition()I
    .registers 3

    .prologue
    .line 1376
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, -0x1

    .line 1378
    .local v0, "result":I
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_f

    .line 1379
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 1382
    :cond_f
    return v0
.end method

.method public getSpinner()Landroid/widget/Spinner;
    .registers 2

    .prologue
    .line 1314
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1167
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 1168
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 1169
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1171
    .end local v0    # "result":Ljava/lang/Object;
    :cond_b
    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 1181
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 1182
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 1183
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1185
    .end local v0    # "result":Ljava/lang/Object;
    :cond_b
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 1340
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 1342
    .local v0, "result":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_f

    .line 1343
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1346
    :cond_f
    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 1214
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 295
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 1305
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public gone()Lcom/androidquery/AbstractAQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1023
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->visibility(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public hardwareAccelerated11()Lcom/androidquery/AbstractAQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/high16 v1, 0x1000000

    .line 1725
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 1726
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 1729
    :cond_f
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public height(I)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "dip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1821
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 1822
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public height(IZ)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "height"    # I
    .param p2, "dip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    .prologue
    .line 1849
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 1850
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public id(I)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 317
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->reset()V

    .line 318
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public id(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public varargs id([I)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "path"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TT;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView([I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(I)Lcom/androidquery/AbstractAQuery;
    .registers 5
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v2, 0x0

    .line 639
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_16

    .line 640
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 641
    .local v0, "iv":Landroid/widget/ImageView;
    const v1, 0x40ff0001

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 642
    if-nez p1, :cond_1b

    .line 643
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 649
    .end local v0    # "iv":Landroid/widget/ImageView;
    :cond_16
    :goto_16
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1

    .line 645
    .restart local v0    # "iv":Landroid/widget/ImageView;
    :cond_1b
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_16
.end method

.method public image(Landroid/graphics/Bitmap;)Lcom/androidquery/AbstractAQuery;
    .registers 5
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 682
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_14

    .line 683
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 684
    .local v0, "iv":Landroid/widget/ImageView;
    const v1, 0x40ff0001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 685
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 688
    .end local v0    # "iv":Landroid/widget/ImageView;
    :cond_14
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public image(Landroid/graphics/Bitmap;F)Lcom/androidquery/AbstractAQuery;
    .registers 5
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "ratio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "F)TT;"
        }
    .end annotation

    .prologue
    .line 895
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    new-instance v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    .line 896
    .local v0, "cb":Lcom/androidquery/callback/BitmapAjaxCallback;
    invoke-virtual {v0, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->bitmap(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 897
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->image(Lcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public image(Landroid/graphics/drawable/Drawable;)Lcom/androidquery/AbstractAQuery;
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_14

    .line 664
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 665
    .local v0, "iv":Landroid/widget/ImageView;
    const v1, 0x40ff0001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 666
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 669
    .end local v0    # "iv":Landroid/widget/ImageView;
    :cond_14
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public image(Lcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "callback"    # Lcom/androidquery/callback/BitmapAjaxCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 815
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 816
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 817
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->invoke(Lcom/androidquery/callback/AbstractAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 820
    :cond_10
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/io/File;I)Lcom/androidquery/AbstractAQuery;
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "targetWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 857
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/androidquery/AbstractAQuery;->image(Ljava/io/File;ZILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/io/File;ZILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .registers 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "memCache"    # Z
    .param p3, "targetWidth"    # I
    .param p4, "callback"    # Lcom/androidquery/callback/BitmapAjaxCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "ZI",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 876
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    if-nez p4, :cond_7

    new-instance p4, Lcom/androidquery/callback/BitmapAjaxCallback;

    .end local p4    # "callback":Lcom/androidquery/callback/BitmapAjaxCallback;
    invoke-direct {p4}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    .line 877
    .restart local p4    # "callback":Lcom/androidquery/callback/BitmapAjaxCallback;
    :cond_7
    invoke-virtual {p4, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->file(Ljava/io/File;)Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 879
    const/4 v1, 0x0

    .line 880
    .local v1, "url":Ljava/lang/String;
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 881
    :cond_11
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZIILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 702
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;Lcom/androidquery/callback/ImageOptions;)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/androidquery/callback/ImageOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/androidquery/callback/ImageOptions;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 790
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;Lcom/androidquery/callback/ImageOptions;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method protected image(Ljava/lang/String;Lcom/androidquery/callback/ImageOptions;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/androidquery/callback/ImageOptions;
    .param p3, "networkUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/androidquery/callback/ImageOptions;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 795
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1f

    .line 796
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    iget-object v5, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    iget-object v7, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    move-object v3, p1

    move-object v6, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/auth/AccountHandle;Lcom/androidquery/callback/ImageOptions;Lorg/apache/http/HttpHost;Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->reset()V

    .line 800
    :cond_1f
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;ZZ)Lcom/androidquery/AbstractAQuery;
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "memCache"    # Z
    .param p3, "fileCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v4, 0x0

    .line 716
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;
    .registers 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "memCache"    # Z
    .param p3, "fileCache"    # Z
    .param p4, "targetWidth"    # I
    .param p5, "fallbackId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII)TT;"
        }
    .end annotation

    .prologue
    .line 734
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;I)Lcom/androidquery/AbstractAQuery;
    .registers 17
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "memCache"    # Z
    .param p3, "fileCache"    # Z
    .param p4, "targetWidth"    # I
    .param p5, "fallbackId"    # I
    .param p6, "preset"    # Landroid/graphics/Bitmap;
    .param p7, "animId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 756
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IF)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IF)Lcom/androidquery/AbstractAQuery;
    .registers 20
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "memCache"    # Z
    .param p3, "fileCache"    # Z
    .param p4, "targetWidth"    # I
    .param p5, "fallbackId"    # I
    .param p6, "preset"    # Landroid/graphics/Bitmap;
    .param p7, "animId"    # I
    .param p8, "ratio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "IF)TT;"
        }
    .end annotation

    .prologue
    .line 776
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFILjava/lang/String;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method protected image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFILjava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 30
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "memCache"    # Z
    .param p3, "fileCache"    # Z
    .param p4, "targetWidth"    # I
    .param p5, "fallbackId"    # I
    .param p6, "preset"    # Landroid/graphics/Bitmap;
    .param p7, "animId"    # I
    .param p8, "ratio"    # F
    .param p9, "round"    # I
    .param p10, "networkUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "IFI",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 781
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_45

    .line 782
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    invoke-virtual/range {p0 .. p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    const v12, 0x7f7fffff    # Float.MAX_VALUE

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/androidquery/AbstractAQuery;->policy:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    move-object/from16 v17, v0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v16, p9

    move-object/from16 v18, p10

    invoke-static/range {v1 .. v18}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;)V

    .line 783
    invoke-virtual/range {p0 .. p0}, Lcom/androidquery/AbstractAQuery;->reset()V

    .line 786
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public image(Ljava/lang/String;ZZIILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "memCache"    # Z
    .param p3, "fileCache"    # Z
    .param p4, "targetWidth"    # I
    .param p5, "resId"    # I
    .param p6, "callback"    # Lcom/androidquery/callback/BitmapAjaxCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 840
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-virtual {p6, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v0

    .line 841
    invoke-virtual {v0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v0, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v0, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    .line 843
    invoke-virtual {p0, p6}, Lcom/androidquery/AbstractAQuery;->image(Lcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "layoutId"    # I
    .param p3, "root"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const v5, 0x40ff0003

    .line 2708
    if-eqz p1, :cond_14

    .line 2709
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2710
    .local v1, "layout":Ljava/lang/Integer;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_14

    .line 2726
    .end local v1    # "layout":Ljava/lang/Integer;
    .end local p1    # "convertView":Landroid/view/View;
    :goto_13
    return-object p1

    .line 2715
    .restart local p1    # "convertView":Landroid/view/View;
    :cond_14
    const/4 v0, 0x0

    .line 2717
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v3, :cond_2d

    .line 2718
    iget-object v3, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2723
    :goto_1f
    const/4 v3, 0x0

    invoke-virtual {v0, p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2724
    .local v2, "view":Landroid/view/View;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object p1, v2

    .line 2726
    goto :goto_13

    .line 2720
    .end local v2    # "view":Landroid/view/View;
    :cond_2d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    check-cast v0, Landroid/view/LayoutInflater;

    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_1f
.end method

.method public invalidate(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2255
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2256
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_9

    .line 2257
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2259
    :cond_9
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public invisible()Lcom/androidquery/AbstractAQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1040
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->visibility(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method protected invoke(Lcom/androidquery/callback/AbstractAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<*TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1912
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p1, "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<*TK;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_9

    .line 1913
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;

    .line 1916
    :cond_9
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    if-eqz v0, :cond_12

    .line 1917
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    :cond_12
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->trans:Lcom/androidquery/callback/Transformer;

    if-eqz v0, :cond_1b

    .line 1921
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->trans:Lcom/androidquery/callback/Transformer;

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->transformer(Lcom/androidquery/callback/Transformer;)Ljava/lang/Object;

    .line 1925
    :cond_1b
    iget v0, p0, Lcom/androidquery/AbstractAQuery;->policy:I

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->policy(I)Ljava/lang/Object;

    .line 1928
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_33

    .line 1929
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy(Ljava/lang/String;I)Ljava/lang/Object;

    .line 1932
    :cond_33
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_44

    .line 1933
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/app/Activity;)V

    .line 1938
    :goto_3c
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->reset()V

    .line 1940
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0

    .line 1935
    :cond_44
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_3c
.end method

.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "sig"    # [Ljava/lang/Class;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v2, 0x0

    .line 1711
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 1712
    .local v0, "handler":Landroid/view/View;
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    .end local v0    # "handler":Landroid/view/View;
    :cond_7
    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    .line 1714
    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isChecked()Z
    .registers 4

    .prologue
    .line 984
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v1, 0x0

    .line 986
    .local v1, "checked":Z
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/CompoundButton;

    if-eqz v2, :cond_f

    .line 987
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    .line 988
    .local v0, "cb":Landroid/widget/CompoundButton;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 991
    .end local v0    # "cb":Landroid/widget/CompoundButton;
    :cond_f
    return v1
.end method

.method public isExist()Z
    .registers 2

    .prologue
    .line 1158
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public itemClicked(Landroid/widget/AdapterView$OnItemClickListener;)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1474
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p1, "listener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_d

    .line 1476
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    .line 1477
    .local v0, "alv":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1482
    .end local v0    # "alv":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public itemClicked(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 7
    .param p1, "handler"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1461
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v2, 0x1

    sget-object v3, Lcom/androidquery/AbstractAQuery;->ON_ITEM_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object v0

    .line 1462
    .local v0, "common":Lcom/androidquery/util/Common;
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->itemClicked(Landroid/widget/AdapterView$OnItemClickListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public itemLongClicked(Landroid/widget/AdapterView$OnItemLongClickListener;)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView$OnItemLongClickListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1509
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p1, "listener":Landroid/widget/AdapterView$OnItemLongClickListener;, "Landroid/widget/AdapterView$OnItemLongClickListener;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_d

    .line 1511
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    .line 1512
    .local v0, "alv":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1517
    .end local v0    # "alv":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public itemLongClicked(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 7
    .param p1, "handler"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1495
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v2, 0x1

    sget-object v3, Lcom/androidquery/AbstractAQuery;->ON_ITEM_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object v0

    .line 1496
    .local v0, "common":Lcom/androidquery/util/Common;
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->itemLongClicked(Landroid/widget/AdapterView$OnItemLongClickListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public itemSelected(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView$OnItemSelectedListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1545
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p1, "listener":Landroid/widget/AdapterView$OnItemSelectedListener;, "Landroid/widget/AdapterView$OnItemSelectedListener;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_d

    .line 1546
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    .line 1547
    .local v0, "alv":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1550
    .end local v0    # "alv":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public itemSelected(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 7
    .param p1, "handler"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1530
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v2, 0x1

    sget-object v3, Lcom/androidquery/AbstractAQuery;->ON_ITEM_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object v0

    .line 1531
    .local v0, "common":Lcom/androidquery/util/Common;
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->itemSelected(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public longClick()Lcom/androidquery/AbstractAQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2578
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 2579
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    .line 2581
    :cond_9
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public longClicked(Landroid/view/View$OnLongClickListener;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnLongClickListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1442
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1443
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1446
    :cond_9
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public longClicked(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 7
    .param p1, "handler"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1428
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v2, 0x1

    sget-object v3, Lcom/androidquery/AbstractAQuery;->ON_CLICK_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object v0

    .line 1429
    .local v0, "common":Lcom/androidquery/util/Common;
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->longClicked(Landroid/view/View$OnLongClickListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public makeSharedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 2460
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v8, 0x0

    .line 2464
    .local v8, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2466
    .local v0, "cached":Ljava/io/File;
    if-eqz v0, :cond_3d

    .line 2468
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getTempDir()Ljava/io/File;

    move-result-object v12

    .line 2470
    .local v12, "temp":Ljava/io/File;
    if-eqz v12, :cond_3d

    .line 2472
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v12, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_52

    .line 2473
    .end local v8    # "file":Ljava/io/File;
    .local v9, "file":Ljava/io/File;
    :try_start_12
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 2475
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2476
    .local v10, "fis":Ljava/io/FileInputStream;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2478
    .local v11, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 2479
    .local v1, "ic":Ljava/nio/channels/FileChannel;
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_26} :catch_4c

    move-result-object v6

    .line 2482
    .local v6, "oc":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    :try_start_29
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_3e

    .line 2484
    :try_start_30
    invoke-static {v10}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 2485
    invoke-static {v11}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 2486
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 2487
    invoke-static {v6}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    move-object v8, v9

    .line 2497
    .end local v0    # "cached":Ljava/io/File;
    .end local v1    # "ic":Ljava/nio/channels/FileChannel;
    .end local v6    # "oc":Ljava/nio/channels/FileChannel;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "temp":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    :cond_3d
    :goto_3d
    return-object v8

    .line 2483
    .end local v8    # "file":Ljava/io/File;
    .restart local v0    # "cached":Ljava/io/File;
    .restart local v1    # "ic":Ljava/nio/channels/FileChannel;
    .restart local v6    # "oc":Ljava/nio/channels/FileChannel;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "temp":Ljava/io/File;
    :catchall_3e
    move-exception v2

    .line 2484
    invoke-static {v10}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 2485
    invoke-static {v11}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 2486
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 2487
    invoke-static {v6}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 2488
    throw v2
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4c} :catch_4c

    .line 2493
    .end local v1    # "ic":Ljava/nio/channels/FileChannel;
    .end local v6    # "oc":Ljava/nio/channels/FileChannel;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    :catch_4c
    move-exception v7

    move-object v8, v9

    .line 2494
    .end local v0    # "cached":Ljava/io/File;
    .end local v9    # "file":Ljava/io/File;
    .end local v12    # "temp":Ljava/io/File;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v8    # "file":Ljava/io/File;
    :goto_4e
    invoke-static {v7}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 2493
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_52
    move-exception v7

    goto :goto_4e
.end method

.method public margin(FFFF)Lcom/androidquery/AbstractAQuery;
    .registers 12
    .param p1, "leftDip"    # F
    .param p2, "topDip"    # F
    .param p3, "rightDip"    # F
    .param p4, "bottomDip"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)TT;"
        }
    .end annotation

    .prologue
    .line 1777
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v6, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v6, :cond_2d

    .line 1779
    iget-object v6, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1781
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_2d

    .line 1783
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1785
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, p1}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result v2

    .line 1786
    .local v2, "left":I
    invoke-static {v1, p2}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result v5

    .line 1787
    .local v5, "top":I
    invoke-static {v1, p3}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result v4

    .line 1788
    .local v4, "right":I
    invoke-static {v1, p4}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result v0

    .local v0, "bottom":I
    move-object v6, v3

    .line 1790
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v6, v2, v5, v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1791
    iget-object v6, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1796
    .end local v0    # "bottom":I
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "left":I
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "right":I
    .end local v5    # "top":I
    :cond_2d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v6

    return-object v6
.end method

.method public overridePendingTransition5(II)Lcom/androidquery/AbstractAQuery;
    .registers 10
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v2, 0x0

    .line 1654
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_1f

    .line 1655
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    const-string v1, "overridePendingTransition"

    sget-object v4, Lcom/androidquery/AbstractAQuery;->PENDING_TRANSITION_SIG:[Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    :cond_1f
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public parent(I)Lcom/androidquery/AbstractAQuery;
    .registers 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 251
    .local v0, "node":Landroid/view/View;
    const/4 v2, 0x0

    .line 253
    .local v2, "result":Landroid/view/View;
    :goto_3
    if-nez v0, :cond_a

    .line 263
    :cond_5
    :goto_5
    invoke-virtual {p0, v2}, Lcom/androidquery/AbstractAQuery;->create(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v3

    return-object v3

    .line 254
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_12

    .line 255
    move-object v2, v0

    .line 256
    goto :goto_5

    .line 258
    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 259
    .local v1, "p":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_5

    move-object v0, v1

    .line 260
    check-cast v0, Landroid/view/View;

    goto :goto_3
.end method

.method public policy(I)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "cachePolicy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iput p1, p0, Lcom/androidquery/AbstractAQuery;->policy:I

    .line 424
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "contentHeader"    # Ljava/lang/String;
    .param p3, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Lcom/androidquery/callback/AjaxCallback",
            "<TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2131
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p5, "callback":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {p5, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p4}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxCallback;->method(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p2}, Lcom/androidquery/callback/AjaxCallback;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    const-string v1, "%entity"

    invoke-virtual {v0, v1, p3}, Lcom/androidquery/callback/AjaxCallback;->param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2132
    invoke-virtual {p0, p5}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .registers 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Lcom/androidquery/callback/AjaxCallback",
            "<TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2140
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p4, "callback":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<TK;>;"
    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {v3, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    .local v3, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v2, "application/json"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AbstractAQuery;->post(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    return-object v0

    .line 2142
    .end local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_16
    move-exception v6

    .line 2143
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public progress(I)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 357
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public progress(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "dialog"    # Landroid/app/Dialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 396
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public progress(Ljava/lang/Object;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "view"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 376
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public proxy(Ljava/lang/String;I)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    .line 435
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "contentHeader"    # Ljava/lang/String;
    .param p3, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Lcom/androidquery/callback/AjaxCallback",
            "<TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2124
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p5, "callback":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {p5, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p4}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxCallback;->method(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p2}, Lcom/androidquery/callback/AjaxCallback;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    const-string v1, "%entity"

    invoke-virtual {v0, v1, p3}, Lcom/androidquery/callback/AjaxCallback;->param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    invoke-virtual {p0, p5}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .registers 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Lcom/androidquery/callback/AjaxCallback",
            "<TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2153
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p4, "callback":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<TK;>;"
    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {v3, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    .local v3, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v2, "application/json"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AbstractAQuery;->put(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    return-object v0

    .line 2155
    .end local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_16
    move-exception v6

    .line 2156
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public rating(F)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "rating"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/RatingBar;

    if-eqz v1, :cond_d

    .line 447
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/RatingBar;

    .line 448
    .local v0, "rb":Landroid/widget/RatingBar;
    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 450
    .end local v0    # "rb":Landroid/widget/RatingBar;
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public recycle(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    .line 277
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 278
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->reset()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->context:Landroid/content/Context;

    .line 280
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method protected reset()V
    .registers 3

    .prologue
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v1, 0x0

    .line 1945
    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 1946
    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 1947
    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->trans:Lcom/androidquery/callback/Transformer;

    .line 1948
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidquery/AbstractAQuery;->policy:I

    .line 1949
    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    .line 1952
    return-void
.end method

.method public scrolled(Landroid/widget/AbsListView$OnScrollListener;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1613
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_d

    .line 1614
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->setScrollListener()Lcom/androidquery/util/Common;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidquery/util/Common;->forward(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1617
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public scrolledBottom(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 6
    .param p1, "handler"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1583
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_10

    .line 1584
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->setScrollListener()Lcom/androidquery/util/Common;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/androidquery/AbstractAQuery;->ON_SCROLLED_STATE_SIG:[Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    .line 1587
    :cond_10
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/androidquery/AbstractAQuery;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    return-object p0
.end method

.method public setLayerType11(ILandroid/graphics/Paint;)Lcom/androidquery/AbstractAQuery;
    .registers 9
    .param p1, "type"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Paint;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v2, 0x0

    .line 1691
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 1693
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    const-string v1, "setLayerType"

    sget-object v4, Lcom/androidquery/AbstractAQuery;->LAYER_TYPE_SIG:[Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v3, 0x1

    aput-object p2, v5, v3

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    :cond_1b
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public setOverScrollMode9(I)Lcom/androidquery/AbstractAQuery;
    .registers 8
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v2, 0x0

    .line 1671
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_1a

    .line 1672
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    const-string v1, "setOverScrollMode"

    sget-object v4, Lcom/androidquery/AbstractAQuery;->OVER_SCROLL_SIG:[Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    :cond_1a
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public setSelection(I)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1563
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_d

    .line 1564
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    .line 1565
    .local v0, "alv":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 1568
    .end local v0    # "alv":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public shouldDelay(IIZLandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .registers 8
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;
    .param p6, "url"    # Ljava/lang/String;

    .prologue
    .line 2372
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-static {p1, p2, p4, p5, p6}, Lcom/androidquery/util/Common;->shouldDelay(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 2423
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    instance-of v0, p3, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_c

    .line 2424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please use the other shouldDelay methods for expandable list."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2426
    :cond_c
    invoke-static {p1, p2, p3, p4}, Lcom/androidquery/util/Common;->shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldDelay(IZLandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .registers 7
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 2349
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, -0x1

    invoke-static {p1, v0, p3, p4, p5}, Lcom/androidquery/util/Common;->shouldDelay(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;F)Z
    .registers 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "velocity"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2316
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x1

    invoke-static {p1, p2, p3, p4, v0}, Lcom/androidquery/util/Common;->shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z

    move-result v0

    return v0
.end method

.method public shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z
    .registers 7
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "velocity"    # F
    .param p5, "fileCheck"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2329
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-static {p1, p2, p3, p4, p5}, Lcom/androidquery/util/Common;->shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z

    move-result v0

    return v0
.end method

.method public show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "dialog"    # Landroid/app/Dialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2597
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    if-eqz p1, :cond_b

    .line 2598
    :try_start_2
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 2599
    sget-object v0, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_10

    .line 2604
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0

    .line 2601
    :catch_10
    move-exception v0

    goto :goto_b
.end method

.method public sync(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidquery/callback/AjaxCallback",
            "<TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2197
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p1, "callback":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 2198
    invoke-virtual {p1}, Lcom/androidquery/callback/AjaxCallback;->block()V

    .line 2199
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public tag(ILjava/lang/Object;)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 924
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 925
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 928
    :cond_9
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public tag(Ljava/lang/Object;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 908
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 909
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 912
    :cond_9
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public text(I)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 462
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_d

    .line 463
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 464
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 466
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public varargs text(I[Ljava/lang/Object;)Lcom/androidquery/AbstractAQuery;
    .registers 6
    .param p1, "resid"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 479
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_d

    .line 480
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/androidquery/AbstractAQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    .line 483
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    return-object v2
.end method

.method public text(Landroid/text/Spanned;)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "text"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_d

    .line 531
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 532
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 494
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_d

    .line 495
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 496
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public text(Ljava/lang/CharSequence;Z)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "goneIfEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    if-eqz p2, :cond_f

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 513
    :cond_a
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->gone()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    .line 515
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    goto :goto_e
.end method

.method public textChanged(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 8
    .param p1, "handler"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1631
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_19

    .line 1633
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 1634
    .local v1, "tv":Landroid/widget/TextView;
    new-instance v2, Lcom/androidquery/util/Common;

    invoke-direct {v2}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v3, 0x1

    sget-object v4, Lcom/androidquery/AbstractAQuery;->TEXT_CHANGE_SIG:[Ljava/lang/Class;

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object v0

    .line 1635
    .local v0, "common":Lcom/androidquery/util/Common;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1639
    .end local v0    # "common":Lcom/androidquery/util/Common;
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_19
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    return-object v2
.end method

.method public textColor(I)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_d

    .line 546
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 547
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 549
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public textColorId(I)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->textColor(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public textSize(F)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .prologue
    .line 587
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_d

    .line 588
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 589
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 591
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public transformer(Lcom/androidquery/callback/Transformer;)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "transformer"    # Lcom/androidquery/callback/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/Transformer;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->trans:Lcom/androidquery/callback/Transformer;

    .line 419
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public transparent(Z)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "transparent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 939
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 940
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->transparent(Landroid/view/View;Z)V

    .line 943
    :cond_9
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 572
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_d

    .line 573
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 574
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 576
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_d
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public visibility(I)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1067
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_11

    .line 1068
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    :cond_11
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public visible()Lcom/androidquery/AbstractAQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1057
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->visibility(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public webImage(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2660
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/androidquery/AbstractAQuery;->webImage(Ljava/lang/String;ZZI)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public webImage(Ljava/lang/String;ZZI)Lcom/androidquery/AbstractAQuery;
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "zoom"    # Z
    .param p3, "control"    # Z
    .param p4, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZI)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v7, 0x0

    .line 2680
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_1f

    .line 2681
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v7}, Lcom/androidquery/AbstractAQuery;->setLayerType11(ILandroid/graphics/Paint;)Lcom/androidquery/AbstractAQuery;

    .line 2683
    new-instance v0, Lcom/androidquery/util/WebImage;

    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/androidquery/util/WebImage;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;ZZI)V

    .line 2684
    .local v0, "wi":Lcom/androidquery/util/WebImage;
    invoke-virtual {v0}, Lcom/androidquery/util/WebImage;->load()V

    .line 2685
    iput-object v7, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 2688
    .end local v0    # "wi":Lcom/androidquery/util/WebImage;
    :cond_1f
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public width(I)Lcom/androidquery/AbstractAQuery;
    .registers 3
    .param p1, "dip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x1

    .line 1808
    invoke-direct {p0, v0, p1, v0}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 1809
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public width(IZ)Lcom/androidquery/AbstractAQuery;
    .registers 4
    .param p1, "width"    # I
    .param p2, "dip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    .prologue
    .line 1835
    .local p0, "this":Lcom/androidquery/AbstractAQuery;, "Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 1836
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method
