.class public Landroid/support/v7/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/support/v7/view/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;,
        Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

.field private static sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

.field private static sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field mDropDownList:Landroid/support/v7/widget/DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mForceIgnoreOutsideTouch:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

.field private mIsAnimatedFromAnchor:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOverlapAnchor:Z

.field private mOverlapAnchorSet:Z

.field mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field final mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "setClipToScreenEnabled"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "ListPopupWindow"

    const-string v4, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    :try_start_1
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "getMaxAvailableHeight"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    goto :goto_1

    .line 92
    :catch_1
    move-exception v2

    .line 93
    .restart local v2    # "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "ListPopupWindow"

    const-string v4, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    :try_start_2
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "setEpicenterBounds"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    goto :goto_2

    .line 99
    :catch_2
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 218
    sget v0, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 229
    sget v0, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "defStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, -0x2

    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    .line 109
    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 112
    const/16 v0, 0x3ea

    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mIsAnimatedFromAnchor:Z

    .line 118
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    .line 120
    iput-boolean v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 121
    iput-boolean v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 122
    const v2, 0x7fffffff

    iput v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 125
    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    .line 136
    new-instance v2, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    .line 137
    new-instance v2, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 138
    new-instance v2, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

    .line 139
    new-instance v2, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

    .line 144
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 256
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 257
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 259
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 261
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 263
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 265
    iget v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v1, :cond_0

    .line 266
    iput-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 268
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    new-instance v1, Landroid/support/v7/widget/AppCompatPopupWindow;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 271
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 272
    return-void
.end method

.method private buildDropDown()I
    .locals 15

    .line 1136
    const/4 v0, 0x0

    .line 1138
    .local v0, "otherHeights":I
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_4

    .line 1139
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1147
    .local v1, "context":Landroid/content/Context;
    new-instance v5, Landroid/support/v7/widget/ListPopupWindow$2;

    invoke-direct {v5, p0}, Landroid/support/v7/widget/ListPopupWindow$2;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v5, p0, Landroid/support/v7/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1158
    iget-boolean v5, p0, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    xor-int/2addr v5, v4

    invoke-virtual {p0, v1, v5}, Landroid/support/v7/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroid/support/v7/widget/DropDownListView;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 1159
    iget-object v5, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 1160
    iget-object v5, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1162
    :cond_0
    iget-object v5, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1163
    iget-object v5, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1164
    iget-object v5, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/DropDownListView;->setFocusable(Z)V

    .line 1165
    iget-object v5, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1166
    iget-object v5, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    new-instance v6, Landroid/support/v7/widget/ListPopupWindow$3;

    invoke-direct {v6, p0}, Landroid/support/v7/widget/ListPopupWindow$3;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1184
    iget-object v5, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1186
    iget-object v5, p0, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_1

    .line 1187
    iget-object v5, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1190
    :cond_1
    iget-object v5, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 1192
    .local v5, "dropDownView":Landroid/view/ViewGroup;
    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1193
    .local v6, "hintView":Landroid/view/View;
    if-eqz v6, :cond_3

    .line 1196
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1197
    .local v7, "hintContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1199
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v2, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1203
    .local v8, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v9, :pswitch_data_0

    .line 1215
    const-string v9, "ListPopupWindow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid hint position "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1205
    :pswitch_0
    invoke-virtual {v7, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1206
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1207
    goto :goto_0

    .line 1210
    :pswitch_1
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1211
    invoke-virtual {v7, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1212
    nop

    .line 1223
    :goto_0
    iget v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v9, :cond_2

    .line 1224
    const/high16 v9, -0x80000000

    .line 1225
    .local v9, "widthMode":I
    iget v10, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 1225
    .local v10, "widthSize":I
    goto :goto_1

    .line 1227
    .end local v9    # "widthMode":I
    .end local v10    # "widthSize":I
    :cond_2
    const/4 v9, 0x0

    .line 1228
    .restart local v9    # "widthMode":I
    const/4 v10, 0x0

    .line 1230
    .restart local v10    # "widthSize":I
    :goto_1
    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1231
    .local v11, "widthSpec":I
    const/4 v12, 0x0

    .line 1232
    .local v12, "heightSpec":I
    invoke-virtual {v6, v11, v3}, Landroid/view/View;->measure(II)V

    .line 1234
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object v8, v13

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1235
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    iget v14, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    .line 1238
    .end local v0    # "otherHeights":I
    .local v13, "otherHeights":I
    move-object v5, v7

    .line 1241
    .end local v7    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v8    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "widthMode":I
    .end local v10    # "widthSize":I
    .end local v11    # "widthSpec":I
    .end local v12    # "heightSpec":I
    move v0, v13

    .line 1241
    .end local v13    # "otherHeights":I
    .restart local v0    # "otherHeights":I
    :cond_3
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1242
    .end local v1    # "context":Landroid/content/Context;
    .end local v6    # "hintView":Landroid/view/View;
    goto :goto_2

    .line 1243
    .end local v5    # "dropDownView":Landroid/view/ViewGroup;
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    .line 1244
    .restart local v5    # "dropDownView":Landroid/view/ViewGroup;
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1245
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 1246
    nop

    .line 1247
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1248
    .local v6, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v7, v8

    .line 1256
    .end local v1    # "view":Landroid/view/View;
    .end local v6    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1257
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_6

    .line 1258
    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1259
    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    .line 1263
    .local v6, "padding":I
    iget-boolean v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v7, :cond_7

    .line 1264
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    iput v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_3

    .line 1267
    .end local v6    # "padding":I
    :cond_6
    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 1268
    const/4 v6, 0x0

    .line 1272
    .restart local v6    # "padding":I
    :cond_7
    :goto_3
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1273
    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    const/4 v3, 0x1

    nop

    .line 1274
    .local v3, "ignoreBottomDecorations":Z
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    iget v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-direct {p0, v4, v7, v3}, Landroid/support/v7/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v4

    .line 1276
    .local v4, "maxHeight":I
    iget-boolean v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v7, :cond_b

    iget v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v2, :cond_9

    goto :goto_6

    .line 1281
    :cond_9
    iget v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v7, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_1

    .line 1295
    iget v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1295
    .local v8, "childWidthSpec":I
    :goto_4
    move v8, v2

    goto :goto_5

    .line 1289
    .end local v8    # "childWidthSpec":I
    :pswitch_2
    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1290
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    sub-int/2addr v2, v8

    .line 1289
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1293
    .local v2, "childWidthSpec":I
    goto :goto_4

    .line 1283
    .end local v2    # "childWidthSpec":I
    :pswitch_3
    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1284
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v2, v7

    const/high16 v7, -0x80000000

    .line 1283
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1287
    .restart local v2    # "childWidthSpec":I
    goto :goto_4

    .line 1295
    .end local v2    # "childWidthSpec":I
    .restart local v8    # "childWidthSpec":I
    :goto_5
    nop

    .line 1301
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    const/4 v9, 0x0

    const/4 v10, -0x1

    sub-int v11, v4, v0

    const/4 v12, -0x1

    invoke-virtual/range {v7 .. v12}, Landroid/support/v7/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v2

    .line 1303
    .local v2, "listContent":I
    if-lez v2, :cond_a

    .line 1304
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v7}, Landroid/support/v7/widget/DropDownListView;->getPaddingTop()I

    move-result v7

    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 1305
    invoke-virtual {v9}, Landroid/support/v7/widget/DropDownListView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v7, v9

    .line 1306
    .local v7, "listPadding":I
    add-int v9, v6, v7

    add-int/2addr v0, v9

    .line 1309
    .end local v7    # "listPadding":I
    :cond_a
    add-int v7, v2, v0

    return v7

    .line 1277
    .end local v2    # "listContent":I
    .end local v8    # "childWidthSpec":I
    :cond_b
    :goto_6
    add-int v2, v4, v6

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .line 1421
    sget-object v0, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1423
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 1424
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1423
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1425
    :catch_0
    move-exception v0

    .line 1426
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method private static isConfirmKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 1407
    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private removePromptView()V
    .locals 3

    .line 769
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 771
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 772
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 773
    .local v1, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 776
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "group":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 5
    .param p1, "clip"    # Z

    .line 1411
    sget-object v0, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1413
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    goto :goto_0

    .line 1414
    :catch_0
    move-exception v0

    .line 1415
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .line 826
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 827
    .local v0, "list":Landroid/support/v7/widget/DropDownListView;
    if-eqz v0, :cond_0

    .line 829
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 831
    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->requestLayout()V

    .line 833
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    .line 1120
    new-instance v0, Landroid/support/v7/widget/ListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/ListPopupWindow$1;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method createDropDownListView(Landroid/content/Context;Z)Landroid/support/v7/widget/DropDownListView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 930
    new-instance v0, Landroid/support/v7/widget/DropDownListView;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .line 752
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 753
    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow;->removePromptView()V

    .line 754
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 755
    iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 756
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 757
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 454
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .line 445
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 417
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 562
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 471
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .line 800
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 926
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .line 316
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 875
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    const/4 v0, 0x0

    return-object v0

    .line 878
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 901
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 904
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 888
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    const/4 v0, -0x1

    return v0

    .line 891
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 914
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    const/4 v0, 0x0

    return-object v0

    .line 917
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSoftInputMode()I
    .locals 1

    .line 401
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 487
    iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x0

    return v0

    .line 490
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 529
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 377
    iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .line 848
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isModal()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 840
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 956
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 962
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 963
    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    .line 964
    invoke-static {p1}, Landroid/support/v7/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 965
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 968
    .local v0, "curIndex":I
    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 970
    .local v2, "below":Z
    iget-object v4, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 973
    .local v4, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 974
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    .line 976
    .local v6, "lastItem":I
    if-eqz v4, :cond_3

    .line 977
    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    .line 978
    .local v7, "allEnabled":Z
    if-eqz v7, :cond_1

    .line 979
    const/4 v8, 0x0

    goto :goto_0

    .line 978
    :cond_1
    iget-object v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 979
    invoke-virtual {v8, v1, v3}, Landroid/support/v7/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    :goto_0
    move v5, v8

    .line 980
    if-eqz v7, :cond_2

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v3

    goto :goto_1

    :cond_2
    iget-object v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 981
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v8, v9, v1}, Landroid/support/v7/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    :goto_1
    move v6, v8

    .line 984
    .end local v7    # "allEnabled":Z
    :cond_3
    const/16 v7, 0x13

    if-eqz v2, :cond_4

    if-ne p1, v7, :cond_4

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v8, 0x14

    if-nez v2, :cond_6

    if-ne p1, v8, :cond_6

    if-lt v0, v6, :cond_6

    .line 988
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->clearListSelection()V

    .line 989
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 990
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 991
    return v3

    .line 995
    :cond_6
    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v9, v1}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 998
    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v9, p1, p2}, Landroid/support/v7/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    .line 1001
    .local v9, "consumed":Z
    if-eqz v9, :cond_8

    .line 1004
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1009
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v7}, Landroid/support/v7/widget/DropDownListView;->requestFocusFromTouch()Z

    .line 1010
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 1012
    const/16 v7, 0x17

    if-eq p1, v7, :cond_7

    const/16 v7, 0x42

    if-eq p1, v7, :cond_7

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 1019
    :cond_7
    :pswitch_0
    return v3

    .line 1022
    :cond_8
    if-eqz v2, :cond_9

    if-ne p1, v8, :cond_9

    .line 1025
    if-ne v0, v6, :cond_a

    .line 1026
    return v3

    .line 1028
    :cond_9
    if-nez v2, :cond_a

    if-ne p1, v7, :cond_a

    if-ne v0, v5, :cond_a

    .line 1030
    return v3

    .line 1036
    .end local v0    # "curIndex":I
    .end local v2    # "below":Z
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    .end local v9    # "consumed":Z
    :cond_a
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1075
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1078
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 1079
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1080
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1081
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 1082
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1084
    :cond_0
    return v2

    .line 1085
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 1086
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1087
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 1088
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1090
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1091
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 1092
    return v2

    .line 1096
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1051
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 1052
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1053
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 1058
    :cond_0
    return v0

    .line 1060
    .end local v0    # "consumed":Z
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public performItemClick(I)Z
    .locals 9
    .param p1, "position"    # I

    .line 859
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 862
    .local v0, "list":Landroid/support/v7/widget/DropDownListView;
    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 863
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    .line 864
    .local v8, "adapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move-object v2, v0

    move-object v3, v7

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 866
    .end local v0    # "list":Landroid/support/v7/widget/DropDownListView;
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 868
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public postShow()V
    .locals 2

    .line 638
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 639
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 281
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 286
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 287
    if-eqz p1, :cond_2

    .line 288
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 291
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    :cond_3
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 464
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 465
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 435
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 436
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 426
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .line 549
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 550
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 551
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 552
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ListPopupWindow;->setWidth(I)V

    .line 556
    :goto_0
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .param p1, "dropDownAlwaysVisible"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 367
    iput-boolean p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 368
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 522
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    .line 523
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 512
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 513
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 351
    iput-boolean p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 352
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .line 574
    if-gez p1, :cond_0

    const/4 v0, -0x2

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    .line 576
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    .line 580
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 480
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 481
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 791
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 792
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    .line 940
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 941
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .line 410
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 411
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .line 329
    iput-boolean p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    .line 330
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 331
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 765
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 766
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 603
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 604
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 614
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 615
    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 1
    .param p1, "overlapAnchor"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1318
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    .line 1319
    iput-boolean p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mOverlapAnchor:Z

    .line 1320
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 306
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    .line 307
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 624
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 625
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 626
    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow;->removePromptView()V

    .line 628
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 629
    if-eqz v0, :cond_1

    .line 630
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 632
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .line 810
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 811
    .local v0, "list":Landroid/support/v7/widget/DropDownListView;
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 812
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 813
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/DropDownListView;->setSelection(I)V

    .line 815
    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/DropDownListView;->setItemChecked(IZ)V

    .line 819
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 391
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 392
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 499
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 501
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 539
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 540
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .line 592
    iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 593
    return-void
.end method

.method public show()V
    .locals 14

    .line 647
    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow;->buildDropDown()I

    move-result v0

    .line 649
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v1

    .line 650
    .local v1, "noInputMethod":Z
    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-static {v2, v3}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 652
    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v2, :cond_c

    .line 653
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 655
    return-void

    .line 658
    :cond_0
    iget v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_1

    .line 661
    const/4 v2, -0x1

    .line 661
    .local v2, "widthSpec":I
    :goto_0
    goto :goto_1

    .line 662
    .end local v2    # "widthSpec":I
    :cond_1
    iget v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v4, :cond_2

    .line 663
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    .line 665
    :cond_2
    iget v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 669
    .restart local v2    # "widthSpec":I
    :goto_1
    iget v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v6, :cond_7

    .line 672
    if-eqz v1, :cond_3

    move v4, v0

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    .line 673
    .local v4, "heightSpec":I
    :goto_2
    if-eqz v1, :cond_5

    .line 674
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v8, v6, :cond_4

    const/4 v8, -0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 676
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_5

    .line 678
    :cond_5
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v8, v6, :cond_6

    const/4 v8, -0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 680
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_5

    .line 682
    .end local v4    # "heightSpec":I
    :cond_7
    iget v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v4, :cond_8

    .line 683
    move v4, v0

    .line 683
    .restart local v4    # "heightSpec":I
    goto :goto_5

    .line 685
    .end local v4    # "heightSpec":I
    :cond_8
    iget v4, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    .line 688
    .restart local v4    # "heightSpec":I
    :goto_5
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v7, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 690
    iget-object v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v9

    iget v10, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v11, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-gez v2, :cond_a

    const/4 v12, -0x1

    goto :goto_7

    :cond_a
    move v12, v2

    :goto_7
    if-gez v4, :cond_b

    const/4 v13, -0x1

    goto :goto_8

    :cond_b
    move v13, v4

    :goto_8
    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 693
    .end local v2    # "widthSpec":I
    .end local v4    # "heightSpec":I
    goto/16 :goto_f

    .line 695
    :cond_c
    iget v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_d

    .line 696
    const/4 v2, -0x1

    .line 696
    .restart local v2    # "widthSpec":I
    :goto_9
    goto :goto_a

    .line 698
    .end local v2    # "widthSpec":I
    :cond_d
    iget v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v4, :cond_e

    .line 699
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_9

    .line 701
    :cond_e
    iget v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 706
    .restart local v2    # "widthSpec":I
    :goto_a
    iget v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v6, :cond_f

    .line 707
    const/4 v4, -0x1

    .line 707
    .restart local v4    # "heightSpec":I
    :goto_b
    goto :goto_c

    .line 709
    .end local v4    # "heightSpec":I
    :cond_f
    iget v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v4, :cond_10

    .line 710
    move v4, v0

    goto :goto_b

    .line 712
    :cond_10
    iget v4, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    .line 716
    .restart local v4    # "heightSpec":I
    :goto_c
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 717
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 718
    invoke-direct {p0, v3}, Landroid/support/v7/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 722
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_11

    iget-boolean v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_11

    const/4 v8, 0x1

    goto :goto_d

    :cond_11
    const/4 v8, 0x0

    :goto_d
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 723
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 724
    iget-boolean v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    if-eqz v7, :cond_12

    .line 725
    iget-object v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mOverlapAnchor:Z

    invoke-static {v7, v8}, Landroid/support/v4/widget/PopupWindowCompat;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 727
    :cond_12
    sget-object v7, Landroid/support/v7/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_13

    .line 729
    :try_start_0
    sget-object v7, Landroid/support/v7/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    iget-object v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    aput-object v9, v3, v5

    invoke-virtual {v7, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    goto :goto_e

    .line 730
    :catch_0
    move-exception v3

    .line 731
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "ListPopupWindow"

    const-string v7, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v5, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_13
    :goto_e
    iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v5

    iget v7, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-static {v3, v5, v7, v8, v9}, Landroid/support/v4/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 736
    iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/DropDownListView;->setSelection(I)V

    .line 738
    iget-boolean v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v3}, Landroid/support/v7/widget/DropDownListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 739
    :cond_14
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->clearListSelection()V

    .line 741
    :cond_15
    iget-boolean v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    if-nez v3, :cond_16

    .line 742
    iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/support/v7/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 745
    .end local v2    # "widthSpec":I
    .end local v4    # "heightSpec":I
    :cond_16
    :goto_f
    return-void
.end method
