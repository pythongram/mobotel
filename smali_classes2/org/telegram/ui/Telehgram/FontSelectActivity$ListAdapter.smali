.class Lorg/telegram/ui/Telehgram/FontSelectActivity$ListAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "FontSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/FontSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/FontSelectActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/FontSelectActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FontSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 147
    iput-object p2, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 148
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FontSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/FontSelectActivity;->access$000(Lorg/telegram/ui/Telehgram/FontSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 167
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 177
    if-nez p2, :cond_9

    .line 178
    new-instance p2, Lorg/telegram/ui/Telehgram/FontSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3, p1}, Lorg/telegram/ui/Telehgram/FontSettingsCell;-><init>(Landroid/content/Context;I)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_9
    move-object v1, p2

    .line 179
    check-cast v1, Lorg/telegram/ui/Telehgram/FontSettingsCell;

    .line 180
    .local v1, "fontSettingsCell":Lorg/telegram/ui/Telehgram/FontSettingsCell;
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FontSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/FontSelectActivity;->access$000(Lorg/telegram/ui/Telehgram/FontSelectActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FontSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/FontSelectActivity;->access$000(Lorg/telegram/ui/Telehgram/FontSelectActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p1, v3, :cond_26

    .line 182
    :cond_26
    const/4 v0, 0x1

    .line 184
    .local v0, "bool":Z
    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 185
    return-object p2
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "paramInt"    # I

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method
