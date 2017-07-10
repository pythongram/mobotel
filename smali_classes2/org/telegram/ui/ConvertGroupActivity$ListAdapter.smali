.class Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ConvertGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ConvertGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ConvertGroupActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ConvertGroupActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 138
    iput-object p2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 139
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/ConvertGroupActivity;->access$200(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 191
    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertRow:I
    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$000(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-ne p1, v1, :cond_a

    .line 196
    :cond_9
    :goto_9
    return v0

    .line 193
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$300(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$400(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-ne p1, v1, :cond_9

    .line 194
    :cond_1a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 143
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertRow:I
    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$000(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 8
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 169
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    packed-switch v2, :pswitch_data_74

    .line 187
    :cond_7
    :goto_7
    return-void

    .line 171
    :pswitch_8
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 172
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertRow:I
    invoke-static {v2}, Lorg/telegram/ui/ConvertGroupActivity;->access$000(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v2

    if-ne p2, v2, :cond_7

    .line 173
    const-string v2, "ConvertGroup"

    const v3, 0x7f070193

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_7

    .line 177
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_22
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 178
    .local v0, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertInfoRow:I
    invoke-static {v2}, Lorg/telegram/ui/ConvertGroupActivity;->access$300(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v2

    if-ne p2, v2, :cond_4d

    .line 179
    const-string v2, "ConvertGroupInfo2"

    const v3, 0x7f070197

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0200d6

    const-string v4, "windowBackgroundGrayShadow"

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 181
    :cond_4d
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    # getter for: Lorg/telegram/ui/ConvertGroupActivity;->convertDetailRow:I
    invoke-static {v2}, Lorg/telegram/ui/ConvertGroupActivity;->access$400(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v2

    if-ne p2, v2, :cond_7

    .line 182
    const-string v2, "ConvertGroupInfo3"

    const v3, 0x7f070198

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0200d7

    const-string v4, "windowBackgroundGrayShadow"

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 169
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_8
        :pswitch_22
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 154
    packed-switch p2, :pswitch_data_22

    .line 161
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, "view":Landroid/view/View;
    :goto_a
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 156
    .end local v0    # "view":Landroid/view/View;
    :pswitch_10
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 157
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_a

    .line 154
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
