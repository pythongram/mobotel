.class public Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/telegram/ui/Telehgram/cleaner/Items;",
        ">;"
    }
.end annotation


# static fields
.field public static final Bitmap:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field inflater:Landroid/view/LayoutInflater;

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Telehgram/cleaner/Items;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItemsIds:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->Bitmap:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Telehgram/cleaner/Items;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Telehgram/cleaner/Items;>;"
    const v0, 0x7f030048

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 35
    iput-object p2, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->context:Landroid/content/Context;

    .line 36
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->items:Ljava/util/ArrayList;

    .line 37
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 38
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->mSelectedItemsIds:Landroid/util/SparseBooleanArray;

    .line 40
    return-void
.end method


# virtual methods
.method public getSelectedCount()I
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->mSelectedItemsIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedIds()Landroid/util/SparseBooleanArray;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->mSelectedItemsIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Telehgram/cleaner/Items;

    .line 47
    .local v1, "item":Lorg/telegram/ui/Telehgram/cleaner/Items;
    if-nez p2, :cond_1e

    .line 48
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030048

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 50
    new-instance v0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 51
    .local v0, "holder":Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :goto_1a
    invoke-virtual {v0, p0, v1, p1}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;->fill(Landroid/widget/ArrayAdapter;Lorg/telegram/ui/Telehgram/cleaner/Items;I)V

    .line 58
    return-object p2

    .line 54
    .end local v0    # "holder":Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;
    :cond_1e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;

    .restart local v0    # "holder":Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter$ViewHolder;
    goto :goto_1a
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 25
    check-cast p1, Lorg/telegram/ui/Telehgram/cleaner/Items;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->remove(Lorg/telegram/ui/Telehgram/cleaner/Items;)V

    return-void
.end method

.method public remove(Lorg/telegram/ui/Telehgram/cleaner/Items;)V
    .registers 3
    .param p1, "object"    # Lorg/telegram/ui/Telehgram/cleaner/Items;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->notifyDataSetChanged()V

    .line 65
    return-void
.end method

.method public removeSelection()V
    .registers 2

    .prologue
    .line 72
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->mSelectedItemsIds:Landroid/util/SparseBooleanArray;

    .line 73
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->notifyDataSetChanged()V

    .line 74
    return-void
.end method

.method public selectView(IZ)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    .line 77
    if-eqz p2, :cond_b

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->mSelectedItemsIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 81
    :goto_7
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->notifyDataSetChanged()V

    .line 82
    return-void

    .line 80
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->mSelectedItemsIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_7
.end method

.method public toggleSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->mSelectedItemsIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->selectView(IZ)V

    .line 69
    return-void

    .line 68
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method
