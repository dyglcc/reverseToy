.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$ViewPositionComparator;,
        Landroid/support/v4/view/ViewPager$LayoutParams;,
        Landroid/support/v4/view/ViewPager$PagerObserver;,
        Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$DecorView;,
        Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;,
        Landroid/support/v4/view/ViewPager$PageTransformer;,
        Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$OnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    .line 140
    new-instance v0, Landroid/support/v4/view/ViewPager$1;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$1;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 147
    new-instance v0, Landroid/support/v4/view/ViewPager$2;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$2;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 251
    new-instance v0, Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 391
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 164
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 179
    const v1, -0x800001

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 180
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 189
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 207
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 234
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 269
    new-instance v1, Landroid/support/v4/view/ViewPager$3;

    invoke-direct {v1, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 277
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 392
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 393
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 396
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 164
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 179
    const v1, -0x800001

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 180
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 189
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 207
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 234
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 269
    new-instance v1, Landroid/support/v4/view/ViewPager$3;

    invoke-direct {v1, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 277
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 397
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 398
    return-void
.end method

.method private calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V
    .locals 11
    .param p1, "curItem"    # Landroid/support/v4/view/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1298
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 1299
    .local v0, "N":I
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    .line 1300
    .local v1, "width":I
    if-lez v1, :cond_0

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1302
    .local v2, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_7

    .line 1303
    iget v3, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1305
    .local v3, "oldCurPosition":I
    iget v4, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_4

    .line 1306
    const/4 v4, 0x0

    .line 1307
    .local v4, "itemIndex":I
    const/4 v5, 0x0

    .line 1308
    .local v5, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v6, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v7, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 1309
    .local v6, "offset":F
    add-int/lit8 v7, v3, 0x1

    .line 1310
    .local v7, "pos":I
    :goto_1
    iget v8, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-gt v7, v8, :cond_3

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 1311
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1312
    :goto_2
    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v7, v8, :cond_1

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_1

    .line 1313
    add-int/lit8 v4, v4, 0x1

    .line 1314
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_2

    .line 1316
    :cond_1
    :goto_3
    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v7, v8, :cond_2

    .line 1319
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8, v7}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    add-float/2addr v6, v8

    .line 1320
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1322
    :cond_2
    iput v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1323
    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    add-float/2addr v6, v8

    .line 1310
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1325
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "pos":I
    :cond_3
    goto :goto_7

    :cond_4
    iget v4, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_7

    .line 1326
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1327
    .restart local v4    # "itemIndex":I
    const/4 v5, 0x0

    .line 1328
    .restart local v5    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v6, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1329
    .restart local v6    # "offset":F
    add-int/lit8 v7, v3, -0x1

    .line 1330
    .restart local v7    # "pos":I
    :goto_4
    iget v8, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v7, v8, :cond_7

    if-ltz v4, :cond_7

    .line 1331
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1332
    :goto_5
    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v7, v8, :cond_5

    if-lez v4, :cond_5

    .line 1333
    add-int/lit8 v4, v4, -0x1

    .line 1334
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_5

    .line 1336
    :cond_5
    :goto_6
    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v7, v8, :cond_6

    .line 1339
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8, v7}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    sub-float/2addr v6, v8

    .line 1340
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 1342
    :cond_6
    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v6, v8

    .line 1343
    iput v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1330
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 1349
    .end local v3    # "oldCurPosition":I
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "pos":I
    :cond_7
    :goto_7
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1350
    .local v3, "itemCount":I
    iget v4, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1351
    .local v4, "offset":F
    iget v5, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v5, v5, -0x1

    .line 1352
    .local v5, "pos":I
    iget v6, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v6, :cond_8

    iget v6, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    goto :goto_8

    :cond_8
    const v6, -0x800001

    :goto_8
    iput v6, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 1353
    iget v6, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v7, v0, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v6, v7, :cond_9

    iget v6, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    sub-float/2addr v6, v8

    goto :goto_9

    :cond_9
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    :goto_9
    iput v6, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 1356
    add-int/lit8 v6, p2, -0x1

    .line 1356
    .local v6, "i":I
    :goto_a
    if-ltz v6, :cond_c

    .line 1357
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1358
    .local v7, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_b
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v5, v9, :cond_a

    .line 1359
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v10, v5, -0x1

    .line 1359
    .local v10, "pos":I
    invoke-virtual {v9, v5}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    .line 1359
    .end local v5    # "pos":I
    add-float/2addr v5, v2

    sub-float/2addr v4, v5

    .line 1357
    move v5, v10

    goto :goto_b

    .line 1361
    .end local v10    # "pos":I
    .restart local v5    # "pos":I
    :cond_a
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    sub-float/2addr v4, v9

    .line 1362
    iput v4, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1363
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v9, :cond_b

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 1356
    .end local v7    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_b
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 1365
    .end local v6    # "i":I
    :cond_c
    iget v6, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 1366
    .end local v4    # "offset":F
    .local v6, "offset":F
    iget v4, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    .line 1368
    .end local v5    # "pos":I
    .local v4, "pos":I
    add-int/lit8 v5, p2, 0x1

    .line 1368
    .local v5, "i":I
    :goto_c
    if-ge v5, v3, :cond_f

    .line 1369
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1370
    .restart local v7    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_d
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v4, v9, :cond_d

    .line 1371
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v10, v4, 0x1

    .line 1371
    .restart local v10    # "pos":I
    invoke-virtual {v9, v4}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v4

    .line 1371
    .end local v4    # "pos":I
    add-float/2addr v4, v2

    add-float/2addr v6, v4

    .line 1369
    move v4, v10

    goto :goto_d

    .line 1373
    .end local v10    # "pos":I
    .restart local v4    # "pos":I
    :cond_d
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v10, v0, -0x1

    if-ne v9, v10, :cond_e

    .line 1374
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v6

    sub-float/2addr v9, v8

    iput v9, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 1376
    :cond_e
    iput v6, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1377
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    add-float/2addr v6, v9

    .line 1368
    .end local v7    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1380
    .end local v5    # "i":I
    :cond_f
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 1381
    return-void
.end method

.method private completeScroll(Z)V
    .locals 7
    .param p1, "postEvents"    # Z

    .line 1974
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1975
    .local v0, "needPopulate":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1977
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1978
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v1, v3

    .line 1979
    .local v1, "wasScrolling":Z
    if-eqz v1, :cond_2

    .line 1980
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1981
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1982
    .local v3, "oldX":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v4

    .line 1983
    .local v4, "oldY":I
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1984
    .local v5, "x":I
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1985
    .local v6, "y":I
    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 1986
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1987
    if-eq v5, v3, :cond_2

    .line 1988
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 1993
    .end local v1    # "wasScrolling":Z
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1994
    move v1, v0

    const/4 v0, 0x0

    .line 1994
    .local v0, "i":I
    .local v1, "needPopulate":Z
    :goto_1
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1995
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1996
    .local v3, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-boolean v4, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v4, :cond_3

    .line 1997
    const/4 v1, 0x1

    .line 1998
    iput-boolean v2, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 1994
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2001
    .end local v0    # "i":I
    :cond_4
    if-eqz v1, :cond_6

    .line 2002
    if-eqz p1, :cond_5

    .line 2003
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2005
    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2008
    :cond_6
    :goto_2
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 5
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .line 2406
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    if-le v0, v1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_1

    .line 2407
    if-lez p3, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 2407
    .local v0, "targetPage":I
    :goto_0
    goto :goto_2

    .line 2409
    .end local v0    # "targetPage":I
    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lt p1, v0, :cond_2

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_2
    const v0, 0x3f19999a    # 0.6f

    .line 2410
    .local v0, "truncator":F
    :goto_1
    add-float v1, p2, v0

    float-to-int v1, v1

    add-int v0, p1, v1

    .line 2413
    .local v0, "targetPage":I
    :goto_2
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2414
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2415
    .local v1, "firstItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2418
    .local v2, "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v4, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2421
    .end local v1    # "firstItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v2    # "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_3
    return v0
.end method

.method private dispatchOnPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .line 1923
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1924
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1926
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1927
    const/4 v0, 0x0

    .line 1927
    .local v0, "i":I
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1927
    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1928
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 1929
    .local v2, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    if-eqz v2, :cond_1

    .line 1930
    invoke-interface {v2, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1927
    .end local v2    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1934
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1935
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1937
    :cond_3
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .line 1940
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1941
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1943
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1944
    const/4 v0, 0x0

    .line 1944
    .local v0, "i":I
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1944
    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1945
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 1946
    .local v2, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    if-eqz v2, :cond_1

    .line 1947
    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1944
    .end local v2    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1951
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1952
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1954
    :cond_3
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 1957
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1960
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1961
    const/4 v0, 0x0

    .line 1961
    .local v0, "i":I
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1961
    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1962
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 1963
    .local v2, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    if-eqz v2, :cond_1

    .line 1964
    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1961
    .end local v2    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1968
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1969
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1971
    :cond_3
    return-void
.end method

.method private enableLayers(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .line 2015
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 2016
    .local v0, "childCount":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2016
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2017
    if-eqz p1, :cond_0

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mPageTransformerLayerType:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 2019
    .local v3, "layerType":I
    :goto_1
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2016
    .end local v3    # "layerType":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2021
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .line 2659
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2660
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2662
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2663
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2664
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2666
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .line 2859
    if-nez p1, :cond_0

    .line 2860
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object p1, v0

    .line 2862
    :cond_0
    if-nez p2, :cond_1

    .line 2863
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2864
    return-object p1

    .line 2866
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2867
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2868
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2869
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2871
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2872
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    if-eq v0, p0, :cond_2

    .line 2873
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2874
    .local v1, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2875
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2876
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2877
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2879
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2880
    .end local v1    # "group":Landroid/view/ViewGroup;
    goto :goto_0

    .line 2881
    :cond_2
    return-object p1
.end method

.method private getClientWidth()I
    .locals 2

    .line 600
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 14

    .line 2363
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    .line 2364
    .local v0, "width":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2365
    .local v2, "scrollOffset":F
    :goto_0
    if-lez v0, :cond_1

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v3, v0

    div-float/2addr v1, v3

    nop

    .line 2366
    .local v1, "marginOffset":F
    :cond_1
    const/4 v3, -0x1

    .line 2367
    .local v3, "lastPos":I
    const/4 v4, 0x0

    .line 2368
    .local v4, "lastOffset":F
    const/4 v5, 0x0

    .line 2369
    .local v5, "lastWidth":F
    const/4 v6, 0x1

    .line 2371
    .local v6, "first":Z
    const/4 v7, 0x0

    .line 2372
    .local v7, "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    const/4 v8, 0x0

    .line 2372
    .local v8, "i":I
    :goto_1
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 2373
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2375
    .local v9, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-nez v6, :cond_2

    iget v10, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v11, v3, 0x1

    if-eq v10, v11, :cond_2

    .line 2377
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2378
    add-float v10, v4, v5

    add-float/2addr v10, v1

    iput v10, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2379
    add-int/lit8 v10, v3, 0x1

    iput v10, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2380
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v11, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v10, v11}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v10

    iput v10, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 2381
    add-int/lit8 v8, v8, -0x1

    .line 2383
    :cond_2
    iget v10, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2385
    .local v10, "offset":F
    move v11, v10

    .line 2386
    .local v11, "leftBound":F
    iget v12, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v10

    add-float/2addr v12, v1

    .line 2387
    .local v12, "rightBound":F
    if-nez v6, :cond_4

    cmpl-float v13, v2, v11

    if-ltz v13, :cond_3

    goto :goto_2

    .line 2392
    :cond_3
    return-object v7

    .line 2388
    :cond_4
    :goto_2
    cmpg-float v13, v2, v12

    if-ltz v13, :cond_6

    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v8, v13, :cond_5

    goto :goto_3

    .line 2394
    :cond_5
    const/4 v6, 0x0

    .line 2395
    iget v3, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2396
    move v4, v10

    .line 2397
    iget v5, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 2398
    move-object v7, v9

    .line 2372
    .end local v9    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v10    # "offset":F
    .end local v11    # "leftBound":F
    .end local v12    # "rightBound":F
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2389
    .restart local v9    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v10    # "offset":F
    .restart local v11    # "leftBound":F
    .restart local v12    # "rightBound":F
    :cond_6
    :goto_3
    return-object v9

    .line 2401
    .end local v8    # "i":I
    .end local v9    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v10    # "offset":F
    .end local v11    # "leftBound":F
    .end local v12    # "rightBound":F
    :cond_7
    return-object v7
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1498
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1499
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Landroid/support/v4/view/ViewPager$DecorView;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .line 2011
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v1

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2645
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2646
    .local v1, "pointerId":I
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 2649
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2650
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2651
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2652
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 2653
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2656
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private pageScrolled(I)Z
    .locals 9
    .param p1, "xpos"    # I

    .line 1818
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1819
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_0

    .line 1822
    return v1

    .line 1824
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1825
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1826
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    if-nez v0, :cond_1

    .line 1827
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1830
    :cond_1
    return v1

    .line 1832
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 1833
    .local v0, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 1834
    .local v2, "width":I
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v3, v2

    .line 1835
    .local v3, "widthWithMargin":I
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 1836
    .local v4, "marginOffset":F
    iget v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1837
    .local v5, "currentPage":I
    int-to-float v6, p1

    int-to-float v7, v2

    div-float/2addr v6, v7

    iget v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v6, v7

    iget v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v4

    div-float/2addr v6, v7

    .line 1839
    .local v6, "pageOffset":F
    int-to-float v7, v3

    mul-float v7, v7, v6

    float-to-int v7, v7

    .line 1841
    .local v7, "offsetPixels":I
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1842
    invoke-virtual {p0, v5, v6, v7}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1843
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    if-nez v1, :cond_3

    .line 1844
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1847
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private performDrag(F)Z
    .locals 17
    .param p1, "x"    # F

    move-object/from16 v0, p0

    .line 2310
    move/from16 v1, p1

    const/4 v2, 0x0

    .line 2312
    .local v2, "needsInvalidate":Z
    iget v3, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float/2addr v3, v1

    .line 2313
    .local v3, "deltaX":F
    iput v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2315
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    .line 2316
    .local v4, "oldScrollX":F
    add-float v5, v4, v3

    .line 2317
    .local v5, "scrollX":F
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v6

    .line 2319
    .local v6, "width":I
    int-to-float v7, v6

    iget v8, v0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float v7, v7, v8

    .line 2320
    .local v7, "leftBound":F
    int-to-float v8, v6

    iget v9, v0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float v8, v8, v9

    .line 2321
    .local v8, "rightBound":F
    const/4 v9, 0x1

    .line 2322
    .local v9, "leftAbsolute":Z
    const/4 v10, 0x1

    .line 2324
    .local v10, "rightAbsolute":Z
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2325
    .local v11, "firstItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v12, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2326
    .local v12, "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v13, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eqz v13, :cond_0

    .line 2327
    const/4 v9, 0x0

    .line 2328
    iget v13, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v14, v6

    mul-float v7, v13, v14

    .line 2330
    :cond_0
    iget v13, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v14}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-eq v13, v14, :cond_1

    .line 2331
    const/4 v10, 0x0

    .line 2332
    iget v13, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v14, v6

    mul-float v8, v13, v14

    .line 2335
    :cond_1
    cmpg-float v13, v5, v7

    if-gez v13, :cond_3

    .line 2336
    if-eqz v9, :cond_2

    .line 2337
    sub-float v13, v7, v5

    .line 2338
    .local v13, "over":F
    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v1, v6

    div-float/2addr v15, v1

    invoke-virtual {v14, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2339
    const/4 v1, 0x1

    .line 2341
    .end local v2    # "needsInvalidate":Z
    .end local v13    # "over":F
    .local v1, "needsInvalidate":Z
    move v2, v1

    .line 2341
    .end local v1    # "needsInvalidate":Z
    .restart local v2    # "needsInvalidate":Z
    :cond_2
    move v5, v7

    goto :goto_0

    .line 2342
    :cond_3
    cmpl-float v1, v5, v8

    if-lez v1, :cond_5

    .line 2343
    if-eqz v10, :cond_4

    .line 2344
    sub-float v1, v5, v8

    .line 2345
    .local v1, "over":F
    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v14

    int-to-float v15, v6

    div-float/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2346
    const/4 v1, 0x1

    .line 2348
    .end local v2    # "needsInvalidate":Z
    .local v1, "needsInvalidate":Z
    move v2, v1

    .line 2348
    .end local v1    # "needsInvalidate":Z
    .restart local v2    # "needsInvalidate":Z
    :cond_4
    move v5, v8

    .line 2351
    :cond_5
    :goto_0
    iget v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v13, v5

    int-to-float v13, v13

    sub-float v13, v5, v13

    add-float/2addr v1, v13

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2352
    float-to-int v1, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v13

    invoke-virtual {v0, v1, v13}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2353
    float-to-int v1, v5

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 2355
    return v2
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .line 1655
    if-lez p2, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1656
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1657
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    mul-int v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_1

    .line 1659
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 1660
    .local v0, "widthWithMargin":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p4

    .line 1662
    .local v1, "oldWidthWithMargin":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 1663
    .local v2, "xpos":I
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 1664
    .local v3, "pageOffset":F
    int-to-float v4, v0

    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 1666
    .local v4, "newOffsetPixels":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1667
    .end local v0    # "widthWithMargin":I
    .end local v1    # "oldWidthWithMargin":I
    .end local v2    # "xpos":I
    .end local v3    # "pageOffset":F
    .end local v4    # "newOffsetPixels":I
    goto :goto_1

    .line 1669
    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 1670
    .local v0, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v0, :cond_2

    iget v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1671
    .local v1, "scrollOffset":F
    :goto_0
    nop

    .line 1672
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 1673
    .local v2, "scrollPos":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1674
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 1675
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1678
    .end local v0    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v1    # "scrollOffset":F
    .end local v2    # "scrollPos":I
    :cond_3
    :goto_1
    return-void
.end method

.method private removeNonDecorViews()V
    .locals 4

    .line 555
    const/4 v0, 0x0

    .line 555
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 556
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 557
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 558
    .local v2, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v3, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 559
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 560
    add-int/lit8 v0, v0, -0x1

    .line 555
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .line 2303
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2304
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2305
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2307
    :cond_0
    return-void
.end method

.method private resetTouch()Z
    .locals 1

    .line 2294
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2295
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 2296
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2297
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2298
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2299
    .local v0, "needsInvalidate":Z
    :goto_1
    return v0
.end method

.method private scrollToItem(IZIZ)V
    .locals 7
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .line 676
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 677
    .local v0, "curInfo":Landroid/support/v4/view/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 678
    .local v1, "destX":I
    if-eqz v0, :cond_0

    .line 679
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 680
    .local v2, "width":I
    int-to-float v3, v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    iget v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 681
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 680
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v1, v3

    .line 683
    .end local v2    # "width":I
    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 684
    invoke-virtual {p0, v1, v2, p3}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    .line 685
    if-eqz p4, :cond_3

    .line 686
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    goto :goto_0

    .line 689
    :cond_1
    if-eqz p4, :cond_2

    .line 690
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    .line 692
    :cond_2
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 693
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 694
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 696
    :cond_3
    :goto_0
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2669
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2670
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    .line 2681
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 4

    .line 1282
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 1283
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 1286
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1288
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 1289
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 1289
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1290
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1291
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1293
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v2, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1295
    .end local v0    # "childCount":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2905
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2907
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2909
    .local v1, "descendantFocusability":I
    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    .line 2910
    const/4 v2, 0x0

    .line 2910
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2911
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2912
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2913
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2914
    .local v4, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2915
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2910
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2925
    .end local v2    # "i":I
    :cond_1
    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_2

    .line 2926
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 2929
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2930
    return-void

    .line 2932
    :cond_3
    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2933
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2934
    return-void

    .line 2936
    :cond_4
    if-eqz p1, :cond_5

    .line 2937
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2940
    :cond_5
    return-void
.end method

.method addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .line 1008
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    .line 1009
    .local v0, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iput p1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1010
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 1011
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 1012
    if-ltz p2, :cond_1

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 1015
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1013
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    :goto_1
    return-object v0
.end method

.method public addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 581
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 584
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    return-void
.end method

.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 723
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 726
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2950
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 2950
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2951
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2952
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2953
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 2954
    .local v2, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2955
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2950
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2959
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1472
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1473
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1475
    :cond_0
    move-object v0, p3

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1477
    .local v0, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Landroid/support/v4/view/ViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 1478
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1479
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1480
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1482
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1483
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_0

    .line 1485
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1495
    :goto_0
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 2793
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2794
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 2795
    const/4 v0, 0x0

    goto :goto_3

    .line 2796
    :cond_0
    if-eqz v0, :cond_4

    .line 2797
    const/4 v1, 0x0

    .line 2798
    .local v1, "isChild":Z
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2798
    .local v2, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2800
    if-ne v2, p0, :cond_1

    .line 2801
    const/4 v1, 0x1

    .line 2802
    goto :goto_1

    .line 2799
    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    .line 2805
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 2807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2808
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2809
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2809
    .local v3, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 2811
    const-string v4, " => "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_2

    .line 2813
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_3
    const-string v3, "ViewPager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2814
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2813
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    const/4 v0, 0x0

    .line 2819
    .end local v1    # "isChild":Z
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :goto_3
    const/4 v1, 0x0

    .line 2821
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2823
    .local v2, "nextFocused":Landroid/view/View;
    const/16 v3, 0x42

    const/16 v4, 0x11

    if-eqz v2, :cond_8

    if-eq v2, v0, :cond_8

    .line 2824
    if-ne p1, v4, :cond_6

    .line 2827
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2828
    .local v3, "nextLeft":I
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2829
    .local v4, "currLeft":I
    if-eqz v0, :cond_5

    if-lt v3, v4, :cond_5

    .line 2830
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v1

    goto :goto_4

    .line 2832
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2834
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :goto_4
    goto :goto_7

    :cond_6
    if-ne p1, v3, :cond_c

    .line 2837
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2838
    .restart local v3    # "nextLeft":I
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2839
    .restart local v4    # "currLeft":I
    if-eqz v0, :cond_7

    if-gt v3, v4, :cond_7

    .line 2840
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_5

    .line 2842
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2844
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :goto_5
    goto :goto_7

    .line 2845
    :cond_8
    if-eq p1, v4, :cond_b

    const/4 v4, 0x1

    if-ne p1, v4, :cond_9

    goto :goto_6

    .line 2848
    :cond_9
    if-eq p1, v3, :cond_a

    const/4 v3, 0x2

    if-ne p1, v3, :cond_c

    .line 2850
    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_7

    .line 2847
    :cond_b
    :goto_6
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v1

    .line 2852
    :cond_c
    :goto_7
    if-eqz v1, :cond_d

    .line 2853
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 2855
    :cond_d
    return v1
.end method

.method public beginFakeDrag()Z
    .locals 12

    .line 2528
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    .line 2529
    const/4 v0, 0x0

    return v0

    .line 2531
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    .line 2532
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2533
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    .line 2534
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 2535
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 2537
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 2539
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2540
    .local v10, "time":J
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2541
    .local v1, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2542
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2543
    iput-wide v10, p0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    .line 2544
    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    move-object v0, p1

    .line 2719
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2720
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2721
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2722
    .local v3, "scrollX":I
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2723
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 2725
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .line 2725
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 2728
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2729
    .local v13, "child":Landroid/view/View;
    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v8, :cond_0

    add-int v7, p5, v4

    .line 2730
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p5, v4

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    const/4 v9, 0x1

    add-int v7, p4, v3

    .line 2731
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v11, v7, v8

    add-int v7, p5, v4

    .line 2732
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v12, v7, v8

    .line 2731
    move-object v7, p0

    move-object v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2733
    return v2

    .line 2725
    .end local v13    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2738
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    move/from16 v3, p3

    neg-int v4, v3

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_2
    move/from16 v3, p3

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 2692
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2693
    return v1

    .line 2696
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    .line 2697
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 2698
    .local v2, "scrollX":I
    const/4 v3, 0x1

    if-gez p1, :cond_2

    .line 2699
    int-to-float v4, v0

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    if-le v2, v4, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 2700
    :cond_2
    if-lez p1, :cond_4

    .line 2701
    int-to-float v4, v0

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    if-ge v2, v4, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1

    .line 2703
    :cond_4
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 3029
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearOnPageChangeListeners()V
    .locals 1

    .line 745
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 748
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .line 1793
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    .line 1794
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1795
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1796
    .local v0, "oldX":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1797
    .local v1, "oldY":I
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1798
    .local v2, "x":I
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1800
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1801
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1802
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1803
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1804
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1809
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1810
    return-void

    .line 1814
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 1815
    return-void
.end method

.method dataSetChanged()V
    .locals 12

    .line 1023
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 1024
    .local v0, "adapterCount":I
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 1025
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 1026
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1027
    .local v1, "needPopulate":Z
    :goto_0
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 1029
    .local v2, "newCurrItem":I
    const/4 v5, 0x0

    .line 1030
    .local v5, "isUpdating":Z
    move v6, v2

    move v2, v1

    const/4 v1, 0x0

    .line 1030
    .local v1, "i":I
    .local v2, "needPopulate":Z
    .local v6, "newCurrItem":I
    :goto_1
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 1031
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1032
    .local v7, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 1034
    .local v8, "newPos":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 1035
    goto :goto_2

    .line 1038
    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    .line 1039
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1040
    add-int/lit8 v1, v1, -0x1

    .line 1042
    if-nez v5, :cond_2

    .line 1043
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v9, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1044
    const/4 v5, 0x1

    .line 1047
    :cond_2
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v10, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v11, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, p0, v10, v11}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1048
    const/4 v2, 0x1

    .line 1050
    iget v9, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget v10, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v10, :cond_5

    .line 1052
    iget v9, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v10, v0, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1053
    const/4 v2, 0x1

    goto :goto_2

    .line 1058
    :cond_3
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_5

    .line 1059
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v10, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_4

    .line 1061
    move v6, v8

    .line 1064
    :cond_4
    iput v8, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1065
    const/4 v2, 0x1

    .line 1030
    .end local v7    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v8    # "newPos":I
    :cond_5
    :goto_2
    add-int/2addr v1, v3

    goto :goto_1

    .line 1069
    .end local v1    # "i":I
    :cond_6
    if-eqz v5, :cond_7

    .line 1070
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1073
    :cond_7
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v7, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1075
    if-eqz v2, :cond_a

    .line 1077
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 1078
    .local v1, "childCount":I
    const/4 v7, 0x0

    .line 1078
    .local v7, "i":I
    :goto_3
    if-ge v7, v1, :cond_9

    .line 1079
    invoke-virtual {p0, v7}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1080
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1081
    .local v9, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v10, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_8

    .line 1082
    const/4 v10, 0x0

    iput v10, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    .line 1078
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1086
    .end local v7    # "i":I
    :cond_9
    invoke-virtual {p0, v6, v4, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1087
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 1089
    .end local v1    # "childCount":I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2744
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2997
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2998
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 3002
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 3003
    .local v0, "childCount":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3003
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3004
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3005
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3006
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 3007
    .local v4, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_1

    .line 3008
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3009
    const/4 v1, 0x1

    return v1

    .line 3003
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3014
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 2
    .param p1, "f"    # F

    .line 927
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 928
    const v0, 0x3ef1463b

    mul-float p1, p1, v0

    .line 929
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2426
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2427
    const/4 v0, 0x0

    .line 2429
    .local v0, "needsInvalidate":Z
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getOverScrollMode()I

    move-result v1

    .line 2430
    .local v1, "overScrollMode":I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 2432
    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-le v3, v2, :cond_0

    goto :goto_0

    .line 2456
    :cond_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 2457
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    .line 2433
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2434
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2435
    .local v2, "restoreCount":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2436
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v4

    .line 2438
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2439
    neg-int v5, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float v6, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2440
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2441
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2442
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2444
    .end local v2    # "restoreCount":I
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_2
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2445
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2446
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    .line 2447
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2449
    .local v4, "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2450
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v3

    mul-float v6, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2451
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v4, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2452
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2453
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2454
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    nop

    .line 2460
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 2462
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2464
    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 915
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 916
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 917
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 920
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 10

    .line 2554
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-nez v0, :cond_0

    .line 2555
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2558
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 2559
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2560
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2561
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 2562
    .local v1, "initialVelocity":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2563
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v3

    .line 2564
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    .line 2565
    .local v4, "scrollX":I
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v5

    .line 2566
    .local v5, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2567
    .local v6, "currentPage":I
    int-to-float v7, v4

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v7, v8

    .line 2568
    .local v7, "pageOffset":F
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iget v9, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v8, v9

    float-to-int v8, v8

    .line 2569
    .local v8, "totalDelta":I
    invoke-direct {p0, v6, v7, v1, v8}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v9

    .line 2571
    .local v9, "nextPage":I
    invoke-virtual {p0, v9, v2, v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2573
    .end local v0    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v1    # "initialVelocity":I
    .end local v3    # "width":I
    .end local v4    # "scrollX":I
    .end local v5    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v6    # "currentPage":I
    .end local v7    # "pageOffset":F
    .end local v8    # "totalDelta":I
    .end local v9    # "nextPage":I
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 2575
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    .line 2576
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2756
    const/4 v0, 0x0

    .line 2757
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    .line 2758
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3d

    const/4 v3, 0x2

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2767
    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2768
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v0

    goto :goto_0

    .line 2770
    :cond_0
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2772
    goto :goto_0

    .line 2760
    :pswitch_1
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2761
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v0

    goto :goto_0

    .line 2763
    :cond_1
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2765
    goto :goto_0

    .line 2774
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2775
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2776
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2777
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2782
    :cond_4
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fakeDragBy(F)V
    .locals 19
    .param p1, "xOffset"    # F

    move-object/from16 v0, p0

    .line 2586
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-nez v1, :cond_0

    .line 2587
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2590
    :cond_0
    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v1, :cond_1

    .line 2591
    return-void

    .line 2594
    :cond_1
    iget v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    add-float v1, v1, p1

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2596
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 2597
    .local v1, "oldScrollX":F
    sub-float v2, v1, p1

    .line 2598
    .local v2, "scrollX":F
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v3

    .line 2600
    .local v3, "width":I
    int-to-float v4, v3

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float v4, v4, v5

    .line 2601
    .local v4, "leftBound":F
    int-to-float v5, v3

    iget v6, v0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float v5, v5, v6

    .line 2603
    .local v5, "rightBound":F
    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2604
    .local v6, "firstItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v8, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2605
    .local v7, "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v8, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eqz v8, :cond_2

    .line 2606
    iget v8, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v9, v3

    mul-float v4, v8, v9

    .line 2608
    :cond_2
    iget v8, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v9, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_3

    .line 2609
    iget v8, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v9, v3

    mul-float v5, v8, v9

    .line 2612
    :cond_3
    cmpg-float v8, v2, v4

    if-gez v8, :cond_4

    .line 2613
    move v2, v4

    goto :goto_0

    .line 2614
    :cond_4
    cmpl-float v8, v2, v5

    if-lez v8, :cond_5

    .line 2615
    move v2, v5

    .line 2618
    :cond_5
    :goto_0
    iget v8, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v9, v2

    int-to-float v9, v9

    sub-float v9, v2, v9

    add-float/2addr v8, v9

    iput v8, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2619
    float-to-int v8, v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2620
    float-to-int v8, v2

    invoke-direct {v0, v8}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 2623
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 2624
    .local v17, "time":J
    iget-wide v9, v0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    const/4 v13, 0x2

    iget v14, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v11, v17

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2626
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v9, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2627
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2628
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3019
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 3034
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 3024
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 572
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 802
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    .line 803
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 804
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    .line 805
    .local v1, "result":I
    return v1
.end method

.method public getCurrentItem()I
    .locals 1

    .line 627
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 828
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 884
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1523
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    .line 1523
    .local v1, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1524
    if-eqz v1, :cond_1

    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1527
    :cond_0
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1525
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 1529
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 1512
    const/4 v0, 0x0

    .line 1512
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1513
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1514
    .local v1, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1515
    return-object v1

    .line 1512
    .end local v1    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1518
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .line 1533
    const/4 v0, 0x0

    .line 1533
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1534
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1535
    .local v1, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v2, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1536
    return-object v1

    .line 1533
    .end local v1    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1539
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method initViewPager()V
    .locals 5

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 402
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 403
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 404
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 405
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 406
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 407
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 409
    .local v3, "density":F
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    .line 410
    const/high16 v4, 0x43c80000    # 400.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    .line 411
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    .line 412
    new-instance v4, Landroid/widget/EdgeEffect;

    invoke-direct {v4, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 413
    new-instance v4, Landroid/widget/EdgeEffect;

    invoke-direct {v4, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 415
    const/high16 v4, 0x41c80000    # 25.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    .line 416
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    .line 417
    const/high16 v4, 0x41800000    # 16.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    .line 419
    new-instance v4, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v4, p0}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 421
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_0

    .line 423
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 427
    :cond_0
    new-instance v0, Landroid/support/v4/view/ViewPager$4;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$4;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 475
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .line 2640
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1544
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1545
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1546
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 479
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 481
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 484
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 485
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 2468
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2471
    iget v1, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    if-lez v1, :cond_4

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_4

    .line 2472
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 2473
    .local v1, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 2475
    .local v2, "width":I
    iget v3, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2476
    .local v3, "marginOffset":F
    const/4 v4, 0x0

    .line 2477
    .local v4, "itemIndex":I
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2478
    .local v5, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2479
    .local v6, "offset":F
    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2480
    .local v7, "itemCount":I
    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2481
    .local v8, "firstPos":I
    iget-object v9, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager$ItemInfo;

    iget v9, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2482
    .local v9, "lastPos":I
    move v10, v6

    move v6, v4

    move v4, v8

    .line 2482
    .local v4, "pos":I
    .local v6, "itemIndex":I
    .local v10, "offset":F
    :goto_0
    if-ge v4, v9, :cond_4

    .line 2483
    :goto_1
    iget v11, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v4, v11, :cond_0

    if-ge v6, v7, :cond_0

    .line 2484
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_1

    .line 2488
    :cond_0
    iget v11, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v4, v11, :cond_1

    .line 2489
    iget v11, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v12, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v12

    int-to-float v12, v2

    mul-float v11, v11, v12

    .line 2490
    .local v11, "drawAt":F
    iget v12, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v13, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float/2addr v12, v3

    .line 2497
    .end local v10    # "offset":F
    .local v12, "offset":F
    move v10, v12

    move v12, v11

    goto :goto_2

    .line 2492
    .end local v11    # "drawAt":F
    .end local v12    # "offset":F
    .restart local v10    # "offset":F
    :cond_1
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v11, v4}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    .line 2493
    .local v11, "widthFactor":F
    add-float v12, v10, v11

    int-to-float v13, v2

    mul-float v12, v12, v13

    .line 2494
    .local v12, "drawAt":F
    add-float v13, v11, v3

    add-float/2addr v10, v13

    .line 2497
    .end local v11    # "widthFactor":F
    :goto_2
    iget v11, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    int-to-float v13, v1

    cmpl-float v11, v11, v13

    if-lez v11, :cond_2

    .line 2498
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    iget v15, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v12

    .line 2499
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    .line 2498
    .end local v3    # "marginOffset":F
    .local v16, "marginOffset":F
    invoke-virtual {v11, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2500
    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 2503
    .end local v16    # "marginOffset":F
    .restart local v3    # "marginOffset":F
    :cond_2
    move-object/from16 v11, p1

    move/from16 v16, v3

    .line 2503
    .end local v3    # "marginOffset":F
    .restart local v16    # "marginOffset":F
    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-lez v3, :cond_3

    .line 2504
    goto :goto_4

    .line 2482
    .end local v12    # "drawAt":F
    :cond_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v16

    goto :goto_0

    .line 2508
    .end local v1    # "scrollX":I
    .end local v2    # "width":I
    .end local v4    # "pos":I
    .end local v5    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v6    # "itemIndex":I
    .end local v7    # "itemCount":I
    .end local v8    # "firstPos":I
    .end local v9    # "lastPos":I
    .end local v10    # "offset":F
    .end local v16    # "marginOffset":F
    :cond_4
    move-object/from16 v11, p1

    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v6, p0

    .line 2031
    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 2034
    .local v8, "action":I
    const/4 v9, 0x0

    const/4 v0, 0x3

    if-eq v8, v0, :cond_f

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    goto/16 :goto_3

    .line 2043
    :cond_0
    if-eqz v8, :cond_2

    .line 2044
    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_1

    .line 2046
    return v10

    .line 2048
    :cond_1
    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_2

    .line 2050
    return v9

    .line 2054
    :cond_2
    const/4 v0, 0x2

    if-eqz v8, :cond_b

    if-eq v8, v0, :cond_4

    const/4 v0, 0x6

    if-eq v8, v0, :cond_3

    goto/16 :goto_2

    .line 2148
    :cond_3
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 2065
    :cond_4
    iget v11, v6, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2066
    .local v11, "activePointerId":I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_5

    .line 2068
    goto/16 :goto_2

    .line 2071
    :cond_5
    invoke-virtual {v7, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 2072
    .local v12, "pointerIndex":I
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 2073
    .local v13, "x":F
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v14, v13, v0

    .line 2074
    .local v14, "dx":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 2075
    .local v15, "xDiff":F
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2076
    .local v5, "y":F
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 2079
    .local v16, "yDiff":F
    const/16 v17, 0x0

    cmpl-float v0, v14, v17

    if-eqz v0, :cond_6

    iget v0, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    invoke-direct {v6, v0, v14}, Landroid/support/v4/view/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x0

    float-to-int v3, v14

    float-to-int v4, v13

    float-to-int v1, v5

    .line 2080
    move-object v0, v6

    move/from16 v18, v1

    move-object v1, v6

    move v9, v5

    move/from16 v5, v18

    .line 2080
    .end local v5    # "y":F
    .local v9, "y":F
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2082
    iput v13, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2083
    iput v9, v6, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2084
    iput-boolean v10, v6, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2085
    const/4 v0, 0x0

    return v0

    .line 2087
    .end local v9    # "y":F
    .restart local v5    # "y":F
    :cond_6
    move v9, v5

    .line 2087
    .end local v5    # "y":F
    .restart local v9    # "y":F
    :cond_7
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v15, v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v0, v0, v15

    cmpl-float v0, v0, v16

    if-lez v0, :cond_9

    .line 2089
    iput-boolean v10, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2090
    invoke-direct {v6, v10}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2091
    invoke-virtual {v6, v10}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2092
    cmpl-float v0, v14, v17

    if-lez v0, :cond_8

    iget v0, v6, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v1, v6, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_8
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v1, v6, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2094
    iput v9, v6, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2095
    invoke-direct {v6, v10}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 2096
    :cond_9
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v16, v0

    if-lez v0, :cond_a

    .line 2102
    iput-boolean v10, v6, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2104
    :cond_a
    :goto_1
    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_d

    .line 2106
    invoke-direct {v6, v13}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2107
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_2

    .line 2118
    .end local v9    # "y":F
    .end local v11    # "activePointerId":I
    .end local v12    # "pointerIndex":I
    .end local v13    # "x":F
    .end local v14    # "dx":F
    .end local v15    # "xDiff":F
    .end local v16    # "yDiff":F
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v6, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v1, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2119
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v6, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    iput v1, v6, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2120
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v6, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2121
    iput-boolean v1, v6, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2123
    iput-boolean v10, v6, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    .line 2124
    iget-object v1, v6, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2125
    iget v1, v6, Landroid/support/v4/view/ViewPager;->mScrollState:I

    if-ne v1, v0, :cond_c

    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 2126
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_c

    .line 2128
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2129
    const/4 v0, 0x0

    iput-boolean v0, v6, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2130
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 2131
    iput-boolean v10, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2132
    invoke-direct {v6, v10}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2133
    invoke-virtual {v6, v10}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_2

    .line 2135
    :cond_c
    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 2136
    iput-boolean v0, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2144
    nop

    .line 2152
    :cond_d
    :goto_2
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_e

    .line 2153
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2155
    :cond_e
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2161
    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    return v0

    .line 2037
    :cond_f
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    .line 2038
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 28
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object/from16 v0, p0

    .line 1682
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 1683
    .local v1, "count":I
    sub-int v4, p4, p2

    .line 1684
    .local v4, "width":I
    sub-int v7, p5, p3

    .line 1685
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v8

    .line 1686
    .local v8, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v9

    .line 1687
    .local v9, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v10

    .line 1688
    .local v10, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v11

    .line 1689
    .local v11, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1691
    .local v12, "scrollX":I
    const/4 v13, 0x0

    .line 1695
    .local v13, "decorCount":I
    move v15, v13

    move v13, v11

    move v11, v9

    move v9, v8

    const/4 v8, 0x0

    .line 1695
    .local v8, "i":I
    .local v9, "paddingLeft":I
    .local v11, "paddingTop":I
    .local v13, "paddingBottom":I
    .local v15, "decorCount":I
    :goto_0
    if-ge v8, v1, :cond_7

    .line 1696
    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1697
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_6

    .line 1698
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1699
    .local v2, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    const/4 v3, 0x0

    .line 1700
    .local v3, "childLeft":I
    const/16 v16, 0x0

    .line 1701
    .local v16, "childTop":I
    move/from16 v17, v3

    iget-boolean v3, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 1701
    .end local v3    # "childLeft":I
    .local v17, "childLeft":I
    if-eqz v3, :cond_6

    .line 1702
    iget v3, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v3, v3, 0x7

    .line 1703
    .local v3, "hgrav":I
    iget v5, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x70

    .line 1704
    .local v5, "vgrav":I
    move-object/from16 v18, v2

    const/4 v2, 0x1

    .line 1704
    .end local v2    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .local v18, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    if-eq v3, v2, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_1

    const/4 v2, 0x5

    if-eq v3, v2, :cond_0

    .line 1706
    move v2, v9

    .line 1707
    .end local v17    # "childLeft":I
    .local v2, "childLeft":I
    goto :goto_1

    .line 1717
    .end local v2    # "childLeft":I
    .restart local v17    # "childLeft":I
    :cond_0
    sub-int v2, v4, v10

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    sub-int v2, v2, v19

    .line 1718
    .end local v17    # "childLeft":I
    .restart local v2    # "childLeft":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v10, v10, v17

    goto :goto_1

    .line 1709
    .end local v2    # "childLeft":I
    .restart local v17    # "childLeft":I
    :cond_1
    move v2, v9

    .line 1710
    .end local v17    # "childLeft":I
    .restart local v2    # "childLeft":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v9, v9, v17

    .line 1711
    goto :goto_1

    .line 1713
    .end local v2    # "childLeft":I
    .restart local v17    # "childLeft":I
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v4, v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1715
    .end local v17    # "childLeft":I
    .restart local v2    # "childLeft":I
    nop

    .line 1721
    :goto_1
    move/from16 v20, v3

    .line 1721
    .end local v3    # "hgrav":I
    .local v20, "hgrav":I
    const/16 v3, 0x10

    if-eq v5, v3, :cond_5

    const/16 v3, 0x30

    if-eq v5, v3, :cond_4

    const/16 v3, 0x50

    if-eq v5, v3, :cond_3

    .line 1723
    move v3, v11

    .line 1724
    .end local v16    # "childTop":I
    .local v3, "childTop":I
    goto :goto_2

    .line 1734
    .end local v3    # "childTop":I
    .restart local v16    # "childTop":I
    :cond_3
    sub-int v3, v7, v13

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v3, v3, v17

    .line 1735
    .end local v16    # "childTop":I
    .restart local v3    # "childTop":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v13, v13, v16

    goto :goto_2

    .line 1726
    .end local v3    # "childTop":I
    .restart local v16    # "childTop":I
    :cond_4
    move v3, v11

    .line 1727
    .end local v16    # "childTop":I
    .restart local v3    # "childTop":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v11, v11, v16

    .line 1728
    goto :goto_2

    .line 1730
    .end local v3    # "childTop":I
    .restart local v16    # "childTop":I
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v7, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1732
    .end local v16    # "childTop":I
    .restart local v3    # "childTop":I
    nop

    .line 1738
    :goto_2
    add-int/2addr v2, v12

    .line 1739
    nop

    .line 1740
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v21, v5

    add-int v5, v2, v16

    .line 1741
    .end local v5    # "vgrav":I
    .local v21, "vgrav":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v6, v3, v16

    .line 1739
    invoke-virtual {v14, v2, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1742
    add-int/lit8 v15, v15, 0x1

    .line 1695
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v14    # "child":Landroid/view/View;
    .end local v18    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v20    # "hgrav":I
    .end local v21    # "vgrav":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1747
    .end local v8    # "i":I
    :cond_7
    sub-int v2, v4, v9

    sub-int/2addr v2, v10

    .line 1749
    .local v2, "childWidth":I
    const/4 v3, 0x0

    .line 1749
    .local v3, "i":I
    :goto_3
    if-ge v3, v1, :cond_a

    .line 1750
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1751
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v8, 0x8

    if-eq v6, v8, :cond_9

    .line 1752
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1754
    .local v6, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v14, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v14, :cond_9

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v14

    move-object/from16 v22, v14

    .line 1754
    .local v22, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v14, :cond_9

    .line 1755
    int-to-float v14, v2

    move/from16 v23, v1

    move-object/from16 v8, v22

    iget v1, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1755
    .end local v1    # "count":I
    .end local v22    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .local v8, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .local v23, "count":I
    mul-float v14, v14, v1

    float-to-int v1, v14

    .line 1756
    .local v1, "loff":I
    add-int v14, v9, v1

    .line 1757
    .local v14, "childLeft":I
    move/from16 v24, v11

    .line 1758
    .local v24, "childTop":I
    move/from16 v25, v1

    iget-boolean v1, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1758
    .end local v1    # "loff":I
    .local v25, "loff":I
    if-eqz v1, :cond_8

    .line 1761
    const/4 v1, 0x0

    iput-boolean v1, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1762
    int-to-float v1, v2

    move/from16 v26, v2

    iget v2, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    .line 1762
    .end local v2    # "childWidth":I
    .local v26, "childWidth":I
    mul-float v1, v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1765
    .local v1, "widthSpec":I
    sub-int v16, v7, v11

    move/from16 v27, v4

    sub-int v4, v16, v13

    .line 1765
    .end local v4    # "width":I
    .local v27, "width":I
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1768
    .local v2, "heightSpec":I
    invoke-virtual {v5, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1768
    .end local v1    # "widthSpec":I
    .end local v2    # "heightSpec":I
    goto :goto_4

    .line 1775
    .end local v26    # "childWidth":I
    .end local v27    # "width":I
    .local v2, "childWidth":I
    .restart local v4    # "width":I
    :cond_8
    move/from16 v26, v2

    move/from16 v27, v4

    .line 1776
    .end local v2    # "childWidth":I
    .end local v4    # "width":I
    .restart local v26    # "childWidth":I
    .restart local v27    # "width":I
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v14

    .line 1777
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move/from16 v4, v24

    add-int/2addr v2, v4

    .line 1775
    .end local v24    # "childTop":I
    .local v4, "childTop":I
    invoke-virtual {v5, v14, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1775
    .end local v4    # "childTop":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v8    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v14    # "childLeft":I
    .end local v25    # "loff":I
    goto :goto_5

    .line 1749
    .end local v23    # "count":I
    .end local v26    # "childWidth":I
    .end local v27    # "width":I
    .local v1, "count":I
    .restart local v2    # "childWidth":I
    .local v4, "width":I
    :cond_9
    move/from16 v23, v1

    move/from16 v26, v2

    move/from16 v27, v4

    .line 1749
    .end local v1    # "count":I
    .end local v2    # "childWidth":I
    .end local v4    # "width":I
    .restart local v23    # "count":I
    .restart local v26    # "childWidth":I
    .restart local v27    # "width":I
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v23

    move/from16 v2, v26

    move/from16 v4, v27

    goto :goto_3

    .line 1781
    .end local v3    # "i":I
    .end local v23    # "count":I
    .end local v26    # "childWidth":I
    .end local v27    # "width":I
    .restart local v1    # "count":I
    .restart local v2    # "childWidth":I
    .restart local v4    # "width":I
    :cond_a
    move/from16 v23, v1

    move/from16 v26, v2

    move/from16 v27, v4

    .line 1781
    .end local v1    # "count":I
    .end local v2    # "childWidth":I
    .end local v4    # "width":I
    .restart local v23    # "count":I
    .restart local v26    # "childWidth":I
    .restart local v27    # "width":I
    iput v11, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    .line 1782
    sub-int v1, v7, v13

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    .line 1783
    iput v15, v0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    .line 1785
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_b

    .line 1786
    iget v1, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_6

    .line 1788
    :cond_b
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1789
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 1555
    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v3

    .line 1556
    move/from16 v4, p2

    invoke-static {v1, v4}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v5

    .line 1555
    invoke-virtual {v0, v3, v5}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v3

    .line 1559
    .local v3, "measuredWidth":I
    div-int/lit8 v5, v3, 0xa

    .line 1560
    .local v5, "maxGutterSize":I
    iget v6, v0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    .line 1563
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1564
    .local v6, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 1571
    .local v7, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v8

    .line 1572
    .local v8, "size":I
    move v9, v7

    move v7, v6

    const/4 v6, 0x0

    .line 1572
    .local v6, "i":I
    .local v7, "childWidthSize":I
    .local v9, "childHeightSize":I
    :goto_0
    const/16 v10, 0x8

    if-ge v6, v8, :cond_b

    .line 1573
    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1574
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v10, :cond_9

    .line 1575
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1576
    .local v10, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    if-eqz v10, :cond_9

    iget-boolean v13, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v13, :cond_9

    .line 1577
    iget v13, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x7

    .line 1578
    .local v13, "hgrav":I
    iget v14, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x70

    .line 1579
    .local v14, "vgrav":I
    const/high16 v15, -0x80000000

    .line 1580
    .local v15, "widthMode":I
    const/high16 v16, -0x80000000

    .line 1581
    .local v16, "heightMode":I
    const/16 v1, 0x30

    if-eq v14, v1, :cond_1

    const/16 v1, 0x50

    if-ne v14, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 1582
    .local v1, "consumeVertical":Z
    :goto_2
    const/4 v11, 0x3

    if-eq v13, v11, :cond_3

    const/4 v11, 0x5

    if-ne v13, v11, :cond_2

    goto :goto_3

    :cond_2
    const/16 v17, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/16 v17, 0x1

    :goto_4
    move/from16 v11, v17

    .line 1584
    .local v11, "consumeHorizontal":Z
    if-eqz v1, :cond_4

    .line 1585
    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_5

    .line 1586
    :cond_4
    if-eqz v11, :cond_5

    .line 1587
    const/high16 v16, 0x40000000    # 2.0f

    .line 1590
    :cond_5
    :goto_5
    move/from16 v17, v7

    .line 1591
    .local v17, "widthSize":I
    move/from16 v18, v9

    .line 1592
    .local v18, "heightSize":I
    iget v2, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    move/from16 v19, v3

    .line 1592
    .end local v3    # "measuredWidth":I
    .local v19, "measuredWidth":I
    const/4 v3, -0x2

    if-eq v2, v3, :cond_6

    .line 1593
    const/high16 v15, 0x40000000    # 2.0f

    .line 1594
    iget v2, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 1595
    iget v2, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    .line 1595
    .end local v17    # "widthSize":I
    .local v2, "widthSize":I
    goto :goto_6

    .line 1598
    .end local v2    # "widthSize":I
    .restart local v17    # "widthSize":I
    :cond_6
    move/from16 v2, v17

    .line 1598
    .end local v17    # "widthSize":I
    .restart local v2    # "widthSize":I
    :goto_6
    iget v3, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_7

    .line 1599
    const/high16 v16, 0x40000000    # 2.0f

    .line 1600
    iget v3, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 1601
    iget v3, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    .line 1604
    .end local v18    # "heightSize":I
    .local v3, "heightSize":I
    move/from16 v4, v16

    goto :goto_7

    .line 1604
    .end local v3    # "heightSize":I
    .restart local v18    # "heightSize":I
    :cond_7
    move/from16 v4, v16

    move/from16 v3, v18

    .line 1604
    .end local v16    # "heightMode":I
    .end local v18    # "heightSize":I
    .restart local v3    # "heightSize":I
    .local v4, "heightMode":I
    :goto_7
    move/from16 v20, v5

    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1605
    .local v5, "widthSpec":I
    .local v20, "maxGutterSize":I
    move/from16 v21, v2

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1606
    .local v2, "heightSpec":I
    .local v21, "widthSize":I
    invoke-virtual {v12, v5, v2}, Landroid/view/View;->measure(II)V

    .line 1608
    if-eqz v1, :cond_8

    .line 1609
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v9, v9, v16

    goto :goto_8

    .line 1610
    :cond_8
    if-eqz v11, :cond_a

    .line 1611
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v7, v7, v16

    .line 1611
    .end local v1    # "consumeVertical":Z
    .end local v2    # "heightSpec":I
    .end local v3    # "heightSize":I
    .end local v4    # "heightMode":I
    .end local v5    # "widthSpec":I
    .end local v10    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v11    # "consumeHorizontal":Z
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "hgrav":I
    .end local v14    # "vgrav":I
    .end local v15    # "widthMode":I
    .end local v21    # "widthSize":I
    goto :goto_8

    .line 1572
    .end local v19    # "measuredWidth":I
    .end local v20    # "maxGutterSize":I
    .local v3, "measuredWidth":I
    .local v5, "maxGutterSize":I
    :cond_9
    move/from16 v19, v3

    move/from16 v20, v5

    .line 1572
    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    .restart local v20    # "maxGutterSize":I
    :cond_a
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v19

    move/from16 v5, v20

    const/4 v1, 0x0

    move/from16 v2, p1

    move/from16 v4, p2

    goto/16 :goto_0

    .line 1617
    .end local v6    # "i":I
    .end local v19    # "measuredWidth":I
    .end local v20    # "maxGutterSize":I
    .restart local v3    # "measuredWidth":I
    .restart local v5    # "maxGutterSize":I
    :cond_b
    move/from16 v19, v3

    move/from16 v20, v5

    .line 1617
    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    .restart local v20    # "maxGutterSize":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    .line 1618
    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    .line 1621
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1622
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1623
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1626
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    .line 1627
    .end local v8    # "size":I
    .local v3, "size":I
    nop

    .line 1627
    .local v2, "i":I
    :goto_9
    if-ge v2, v3, :cond_e

    .line 1628
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1629
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_d

    .line 1634
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1635
    .local v5, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    if-eqz v5, :cond_c

    iget-boolean v6, v5, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_d

    .line 1636
    :cond_c
    int-to-float v6, v7

    iget v8, v5, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float v6, v6, v8

    float-to-int v6, v6

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1638
    .local v6, "widthSpec":I
    iget v8, v0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v6, v8}, Landroid/view/View;->measure(II)V

    .line 1627
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v6    # "widthSpec":I
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1642
    .end local v2    # "i":I
    :cond_e
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 15
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    move-object v0, p0

    .line 1865
    iget v1, v0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_5

    .line 1866
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 1867
    .local v1, "scrollX":I
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v4

    .line 1868
    .local v4, "paddingLeft":I
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v5

    .line 1869
    .local v5, "paddingRight":I
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v6

    .line 1870
    .local v6, "width":I
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    .line 1871
    .local v7, "childCount":I
    move v8, v5

    move v5, v4

    const/4 v4, 0x0

    .line 1871
    .local v4, "i":I
    .local v5, "paddingLeft":I
    .local v8, "paddingRight":I
    :goto_0
    if-ge v4, v7, :cond_5

    .line 1872
    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1873
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1874
    .local v10, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v11, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_0

    .line 1874
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    goto :goto_2

    .line 1876
    .restart local v9    # "child":Landroid/view/View;
    .restart local v10    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_0
    iget v11, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v11, v11, 0x7

    .line 1877
    .local v11, "hgrav":I
    const/4 v12, 0x0

    .line 1878
    .local v12, "childLeft":I
    if-eq v11, v3, :cond_3

    const/4 v13, 0x3

    if-eq v11, v13, :cond_2

    const/4 v13, 0x5

    if-eq v11, v13, :cond_1

    .line 1880
    move v12, v5

    .line 1881
    goto :goto_1

    .line 1891
    :cond_1
    sub-int v13, v6, v8

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v12, v13, v14

    .line 1892
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v8, v13

    goto :goto_1

    .line 1883
    :cond_2
    move v12, v5

    .line 1884
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v5, v13

    .line 1885
    goto :goto_1

    .line 1887
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v13, v6, v13

    div-int/lit8 v13, v13, 0x2

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1889
    nop

    .line 1895
    :goto_1
    add-int/2addr v12, v1

    .line 1897
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v13

    sub-int v13, v12, v13

    .line 1898
    .local v13, "childOffset":I
    if-eqz v13, :cond_4

    .line 1899
    invoke-virtual {v9, v13}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1871
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v11    # "hgrav":I
    .end local v12    # "childLeft":I
    .end local v13    # "childOffset":I
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1904
    .end local v1    # "scrollX":I
    .end local v4    # "i":I
    .end local v5    # "paddingLeft":I
    .end local v6    # "width":I
    .end local v7    # "childCount":I
    .end local v8    # "paddingRight":I
    :cond_5
    invoke-direct/range {p0 .. p3}, Landroid/support/v4/view/ViewPager;->dispatchOnPageScrolled(IFI)V

    .line 1906
    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v1, :cond_7

    .line 1907
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 1908
    .restart local v1    # "scrollX":I
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    .line 1909
    .local v4, "childCount":I
    nop

    .line 1909
    .local v2, "i":I
    :goto_3
    if-ge v2, v4, :cond_7

    .line 1910
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1911
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1913
    .local v6, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v7, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v7, :cond_6

    .line 1913
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    goto :goto_4

    .line 1914
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 1915
    .local v7, "transformPos":F
    iget-object v8, v0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    invoke-interface {v8, v5, v7}, Landroid/support/v4/view/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    .line 1909
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v7    # "transformPos":F
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1919
    .end local v1    # "scrollX":I
    .end local v2    # "i":I
    .end local v4    # "childCount":I
    :cond_7
    iput-boolean v3, v0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1920
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2970
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 2971
    .local v0, "count":I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 2972
    const/4 v1, 0x0

    .line 2973
    .local v1, "index":I
    const/4 v2, 0x1

    .line 2974
    .local v2, "increment":I
    move v3, v0

    .line 2974
    .local v3, "end":I
    goto :goto_0

    .line 2976
    .end local v1    # "index":I
    .end local v2    # "increment":I
    .end local v3    # "end":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 2977
    .restart local v1    # "index":I
    const/4 v2, -0x1

    .line 2978
    .restart local v2    # "increment":I
    const/4 v3, -0x1

    .line 2980
    .restart local v3    # "end":I
    :goto_0
    move v4, v1

    .line 2980
    .local v4, "i":I
    :goto_1
    if-eq v4, v3, :cond_2

    .line 2981
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2982
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2983
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 2984
    .local v6, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v6, :cond_1

    iget v7, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v8, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2985
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2986
    const/4 v7, 0x1

    return v7

    .line 2980
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1
    add-int/2addr v4, v2

    goto :goto_1

    .line 2991
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1452
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1453
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1454
    return-void

    .line 1457
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager$SavedState;

    .line 1458
    .local v0, "ss":Landroid/support/v4/view/ViewPager$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1460
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1461
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1462
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1464
    :cond_1
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 1465
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1466
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 1468
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1441
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1442
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1443
    .local v1, "ss":Landroid/support/v4/view/ViewPager$SavedState;
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iput v2, v1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    .line 1444
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_0

    .line 1445
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1447
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1646
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1649
    if-eq p1, p3, :cond_0

    .line 1650
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1652
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 2166
    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 2170
    return v3

    .line 2173
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2176
    return v4

    .line 2179
    :cond_1
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_a

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 2184
    :cond_2
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_3

    .line 2185
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2187
    :cond_3
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2189
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2190
    .local v2, "action":I
    const/4 v5, 0x0

    .line 2192
    .local v5, "needsInvalidate":Z
    and-int/lit16 v6, v2, 0xff

    packed-switch v6, :pswitch_data_0

    .line 2286
    :cond_4
    :pswitch_0
    move/from16 v16, v2

    .line 2286
    .end local v2    # "action":I
    .local v16, "action":I
    goto/16 :goto_2

    .line 2282
    .end local v16    # "action":I
    .restart local v2    # "action":I
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2283
    iget v4, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    goto :goto_0

    .line 2275
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 2276
    .local v4, "index":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 2277
    .local v6, "x":F
    iput v6, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2278
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2279
    goto :goto_0

    .line 2269
    .end local v4    # "index":I
    .end local v6    # "x":F
    :pswitch_3
    iget-boolean v6, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v6, :cond_5

    .line 2270
    iget v6, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-direct {v0, v6, v3, v4, v4}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    .line 2271
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    move-result v5

    .line 2286
    .end local v2    # "action":I
    .restart local v16    # "action":I
    :cond_5
    :goto_0
    move/from16 v16, v2

    goto/16 :goto_2

    .line 2205
    .end local v16    # "action":I
    .restart local v2    # "action":I
    :pswitch_4
    iget-boolean v4, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-nez v4, :cond_8

    .line 2206
    iget v4, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 2207
    .local v4, "pointerIndex":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_6

    .line 2210
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    move-result v5

    .line 2211
    goto :goto_0

    .line 2213
    :cond_6
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 2214
    .restart local v6    # "x":F
    iget v7, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 2215
    .local v7, "xDiff":F
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 2216
    .local v8, "y":F
    iget v9, v0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 2220
    .local v9, "yDiff":F
    iget v10, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-lez v10, :cond_8

    cmpl-float v10, v7, v9

    if-lez v10, :cond_8

    .line 2222
    iput-boolean v3, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2223
    invoke-direct {v0, v3}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2224
    iget v10, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float v10, v6, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    iget v10, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v11, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    goto :goto_1

    :cond_7
    iget v10, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v11, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    :goto_1
    iput v10, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2226
    iput v8, v0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2227
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2228
    invoke-direct {v0, v3}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2231
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 2232
    .local v10, "parent":Landroid/view/ViewParent;
    if-eqz v10, :cond_8

    .line 2233
    invoke-interface {v10, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2238
    .end local v4    # "pointerIndex":I
    .end local v6    # "x":F
    .end local v7    # "xDiff":F
    .end local v8    # "y":F
    .end local v9    # "yDiff":F
    .end local v10    # "parent":Landroid/view/ViewParent;
    :cond_8
    iget-boolean v4, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_5

    .line 2240
    iget v4, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 2241
    .local v4, "activePointerIndex":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 2242
    .restart local v6    # "x":F
    invoke-direct {v0, v6}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v7

    or-int/2addr v5, v7

    .line 2243
    .end local v4    # "activePointerIndex":I
    .end local v6    # "x":F
    goto :goto_0

    .line 2246
    :pswitch_5
    iget-boolean v4, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_4

    .line 2247
    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2248
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v6, 0x3e8

    iget v7, v0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2249
    iget v6, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v6

    float-to-int v6, v6

    .line 2250
    .local v6, "initialVelocity":I
    iput-boolean v3, v0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2251
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v7

    .line 2252
    .local v7, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v8

    .line 2253
    .local v8, "scrollX":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v9

    .line 2254
    .local v9, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v10, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v10, v10

    int-to-float v11, v7

    div-float/2addr v10, v11

    .line 2255
    .local v10, "marginOffset":F
    iget v11, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2256
    .local v11, "currentPage":I
    int-to-float v12, v8

    int-to-float v13, v7

    div-float/2addr v12, v13

    iget v13, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v12, v13

    iget v13, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v10

    div-float/2addr v12, v13

    .line 2258
    .local v12, "pageOffset":F
    iget v13, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 2259
    .local v13, "activePointerIndex":I
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 2260
    .local v14, "x":F
    iget v15, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float v15, v14, v15

    float-to-int v15, v15

    .line 2261
    .local v15, "totalDelta":I
    move/from16 v16, v2

    invoke-direct {v0, v11, v12, v6, v15}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v2

    .line 2263
    .local v2, "nextPage":I
    .restart local v16    # "action":I
    invoke-virtual {v0, v2, v3, v3, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2265
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    move-result v5

    .line 2266
    .end local v2    # "nextPage":I
    .end local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v6    # "initialVelocity":I
    .end local v7    # "width":I
    .end local v8    # "scrollX":I
    .end local v9    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v10    # "marginOffset":F
    .end local v11    # "currentPage":I
    .end local v12    # "pageOffset":F
    .end local v13    # "activePointerIndex":I
    .end local v14    # "x":F
    .end local v15    # "totalDelta":I
    goto :goto_2

    .line 2194
    .end local v16    # "action":I
    .local v2, "action":I
    :pswitch_6
    move/from16 v16, v2

    .line 2194
    .end local v2    # "action":I
    .restart local v16    # "action":I
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2195
    iput-boolean v4, v0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2196
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 2199
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v2, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2200
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    iput v2, v0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2201
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2202
    nop

    .line 2286
    :goto_2
    if-eqz v5, :cond_9

    .line 2287
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2289
    :cond_9
    return v3

    .line 2181
    .end local v5    # "needsInvalidate":Z
    .end local v16    # "action":I
    :cond_a
    :goto_3
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .line 2885
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lez v0, :cond_0

    .line 2886
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2887
    return v1

    .line 2889
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method pageRight()Z
    .locals 3

    .line 2893
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 2894
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2895
    return v2

    .line 2897
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method populate()V
    .locals 1

    .line 1092
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->populate(I)V

    .line 1093
    return-void
.end method

.method populate(I)V
    .locals 21
    .param p1, "newCurrentItem"    # I

    move-object/from16 v1, p0

    .line 1096
    move/from16 v2, p1

    const/4 v3, 0x0

    .line 1097
    .local v3, "oldCurInfo":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v4, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v4, v2, :cond_0

    .line 1098
    iget v4, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    .line 1099
    iput v2, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 1102
    :cond_0
    iget-object v4, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v4, :cond_1

    .line 1103
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 1104
    return-void

    .line 1111
    :cond_1
    iget-boolean v4, v1, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    if-eqz v4, :cond_2

    .line 1113
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 1114
    return-void

    .line 1120
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1121
    return-void

    .line 1124
    :cond_3
    iget-object v4, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1126
    iget v4, v1, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 1127
    .local v4, "pageLimit":I
    iget v5, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v5, v4

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1128
    .local v5, "startPos":I
    iget-object v7, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v7}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v7

    .line 1129
    .local v7, "N":I
    add-int/lit8 v8, v7, -0x1

    iget v9, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1131
    .local v8, "endPos":I
    iget v9, v1, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    if-eq v7, v9, :cond_4

    .line 1134
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    .local v6, "resName":Ljava/lang/String;
    goto :goto_0

    .line 1135
    .end local v6    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1136
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 1138
    .local v6, "resName":Ljava/lang/String;
    :goto_0
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " Pager id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Pager class: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " Problematic adapter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 1143
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1147
    .end local v6    # "resName":Ljava/lang/String;
    :cond_4
    const/4 v9, -0x1

    .line 1148
    .local v9, "curIndex":I
    const/4 v10, 0x0

    .line 1149
    .local v10, "curItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    const/4 v9, 0x0

    :goto_1
    iget-object v11, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_6

    .line 1150
    iget-object v11, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1151
    .local v11, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v12, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v13, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lt v12, v13, :cond_5

    .line 1152
    iget v12, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v13, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v12, v13, :cond_6

    move-object v10, v11

    goto :goto_2

    .line 1149
    .end local v11    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1157
    :cond_6
    :goto_2
    if-nez v10, :cond_7

    if-lez v7, :cond_7

    .line 1158
    iget v11, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v1, v11, v9}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v10

    .line 1164
    :cond_7
    if-eqz v10, :cond_1d

    .line 1165
    const/4 v13, 0x0

    .line 1166
    .local v13, "extraWidthLeft":F
    add-int/lit8 v14, v9, -0x1

    .line 1167
    .local v14, "itemIndex":I
    if-ltz v14, :cond_8

    iget-object v15, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_3

    :cond_8
    const/4 v15, 0x0

    .line 1168
    .local v15, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v6

    .line 1169
    .local v6, "clientWidth":I
    const/high16 v17, 0x40000000    # 2.0f

    if-gtz v6, :cond_9

    .line 1170
    const/4 v11, 0x0

    goto :goto_4

    .line 1169
    :cond_9
    iget v12, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    sub-float v12, v17, v12

    .line 1170
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    int-to-float v2, v6

    div-float/2addr v11, v2

    add-float/2addr v11, v12

    :goto_4
    move v2, v11

    .line 1171
    .local v2, "leftWidthNeeded":F
    iget v11, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v11, v11, -0x1

    .line 1171
    .local v11, "pos":I
    :goto_5
    if-ltz v11, :cond_11

    .line 1172
    cmpl-float v12, v13, v2

    if-ltz v12, :cond_d

    if-ge v11, v5, :cond_d

    .line 1173
    if-nez v15, :cond_a

    .line 1174
    nop

    .line 1199
    move/from16 v18, v2

    goto/16 :goto_c

    .line 1176
    :cond_a
    iget v12, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_c

    iget-boolean v12, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v12, :cond_c

    .line 1177
    iget-object v12, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1178
    iget-object v12, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move/from16 v18, v2

    iget-object v2, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 1178
    .end local v2    # "leftWidthNeeded":F
    .local v18, "leftWidthNeeded":F
    invoke-virtual {v12, v1, v11, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1183
    add-int/lit8 v14, v14, -0x1

    .line 1184
    add-int/lit8 v9, v9, -0x1

    .line 1185
    if-ltz v14, :cond_b

    iget-object v2, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_6

    :cond_b
    const/4 v12, 0x0

    :goto_6
    move-object v2, v12

    goto :goto_8

    .line 1171
    .end local v18    # "leftWidthNeeded":F
    .restart local v2    # "leftWidthNeeded":F
    :cond_c
    move/from16 v18, v2

    .line 1171
    .end local v2    # "leftWidthNeeded":F
    .restart local v18    # "leftWidthNeeded":F
    goto :goto_b

    .line 1187
    .end local v18    # "leftWidthNeeded":F
    .restart local v2    # "leftWidthNeeded":F
    :cond_d
    move/from16 v18, v2

    .line 1187
    .end local v2    # "leftWidthNeeded":F
    .restart local v18    # "leftWidthNeeded":F
    if-eqz v15, :cond_f

    iget v2, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v11, v2, :cond_f

    .line 1188
    iget v2, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v2

    .line 1189
    add-int/lit8 v14, v14, -0x1

    .line 1190
    if-ltz v14, :cond_e

    iget-object v2, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_7

    :cond_e
    const/4 v12, 0x0

    :goto_7
    move-object v2, v12

    .line 1190
    .end local v15    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .local v2, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_8
    goto :goto_a

    .line 1192
    .end local v2    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v15    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_f
    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v1, v11, v2}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 1193
    .end local v15    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v2    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v12, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v12

    .line 1194
    add-int/lit8 v9, v9, 0x1

    .line 1195
    if-ltz v14, :cond_10

    iget-object v12, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_9

    :cond_10
    const/4 v12, 0x0

    :goto_9
    move-object v2, v12

    .line 1171
    .end local v2    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v15    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_a
    move-object v15, v2

    :goto_b
    add-int/lit8 v11, v11, -0x1

    move/from16 v2, v18

    goto :goto_5

    .line 1199
    .end local v11    # "pos":I
    .end local v18    # "leftWidthNeeded":F
    .local v2, "leftWidthNeeded":F
    :cond_11
    move/from16 v18, v2

    .line 1199
    .end local v2    # "leftWidthNeeded":F
    .restart local v18    # "leftWidthNeeded":F
    :goto_c
    iget v2, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 1200
    .local v2, "extraWidthRight":F
    add-int/lit8 v11, v9, 0x1

    .line 1201
    .end local v14    # "itemIndex":I
    .local v11, "itemIndex":I
    cmpg-float v12, v2, v17

    if-gez v12, :cond_1c

    .line 1202
    iget-object v12, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_12

    iget-object v12, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_d

    :cond_12
    const/4 v12, 0x0

    .line 1203
    .end local v15    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .local v12, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_d
    if-gtz v6, :cond_13

    .line 1204
    const/4 v14, 0x0

    goto :goto_e

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v6

    div-float/2addr v14, v15

    add-float v14, v14, v17

    .line 1205
    .local v14, "rightWidthNeeded":F
    :goto_e
    iget v15, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v15, v15, 0x1

    .line 1205
    .local v15, "pos":I
    :goto_f
    if-ge v15, v7, :cond_1b

    .line 1206
    cmpl-float v17, v2, v14

    if-ltz v17, :cond_17

    if-le v15, v8, :cond_17

    .line 1207
    if-nez v12, :cond_14

    .line 1208
    nop

    .line 1232
    move/from16 v19, v4

    move/from16 v20, v5

    goto/16 :goto_13

    .line 1210
    :cond_14
    move/from16 v19, v4

    iget v4, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1210
    .end local v4    # "pageLimit":I
    .local v19, "pageLimit":I
    if-ne v15, v4, :cond_16

    iget-boolean v4, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v4, :cond_16

    .line 1211
    iget-object v4, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1212
    iget-object v4, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move/from16 v20, v5

    iget-object v5, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 1212
    .end local v5    # "startPos":I
    .local v20, "startPos":I
    invoke-virtual {v4, v1, v15, v5}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1217
    iget-object v4, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_15

    iget-object v4, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_10

    :cond_15
    const/4 v4, 0x0

    :goto_10
    move-object v12, v4

    goto :goto_12

    .line 1205
    .end local v20    # "startPos":I
    .restart local v5    # "startPos":I
    :cond_16
    move/from16 v20, v5

    .line 1205
    .end local v5    # "startPos":I
    .restart local v20    # "startPos":I
    goto :goto_12

    .line 1219
    .end local v19    # "pageLimit":I
    .end local v20    # "startPos":I
    .restart local v4    # "pageLimit":I
    .restart local v5    # "startPos":I
    :cond_17
    move/from16 v19, v4

    move/from16 v20, v5

    .line 1219
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v19    # "pageLimit":I
    .restart local v20    # "startPos":I
    if-eqz v12, :cond_19

    iget v4, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v15, v4, :cond_19

    .line 1220
    iget v4, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v4

    .line 1221
    add-int/lit8 v11, v11, 0x1

    .line 1222
    iget-object v4, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_18

    iget-object v4, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_11

    :cond_18
    const/4 v4, 0x0

    :goto_11
    move-object v12, v4

    goto :goto_12

    .line 1224
    :cond_19
    invoke-virtual {v1, v15, v11}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 1225
    .end local v12    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .local v4, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    add-int/lit8 v11, v11, 0x1

    .line 1226
    iget v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v5

    .line 1227
    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v11, v5, :cond_1a

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_12

    :cond_1a
    const/4 v12, 0x0

    .line 1205
    .end local v4    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v12    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_12
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v19

    move/from16 v5, v20

    goto/16 :goto_f

    .line 1232
    .end local v14    # "rightWidthNeeded":F
    .end local v15    # "pos":I
    .end local v19    # "pageLimit":I
    .end local v20    # "startPos":I
    .local v4, "pageLimit":I
    .restart local v5    # "startPos":I
    :cond_1b
    move/from16 v19, v4

    move/from16 v20, v5

    goto :goto_13

    .line 1232
    .end local v12    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .local v15, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1c
    move/from16 v19, v4

    move/from16 v20, v5

    move-object v12, v15

    .line 1232
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .end local v15    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v12    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v19    # "pageLimit":I
    .restart local v20    # "startPos":I
    :goto_13
    invoke-direct {v1, v10, v9, v3}, Landroid/support/v4/view/ViewPager;->calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V

    .line 1234
    iget-object v4, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v5, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget-object v14, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, v1, v5, v14}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1234
    .end local v2    # "extraWidthRight":F
    .end local v6    # "clientWidth":I
    .end local v11    # "itemIndex":I
    .end local v12    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v13    # "extraWidthLeft":F
    .end local v18    # "leftWidthNeeded":F
    goto :goto_14

    .line 1244
    .end local v19    # "pageLimit":I
    .end local v20    # "startPos":I
    .restart local v4    # "pageLimit":I
    .restart local v5    # "startPos":I
    :cond_1d
    move/from16 v19, v4

    move/from16 v20, v5

    .line 1244
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v19    # "pageLimit":I
    .restart local v20    # "startPos":I
    :goto_14
    iget-object v2, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1248
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1249
    .local v2, "childCount":I
    const/4 v4, 0x0

    .line 1249
    .local v4, "i":I
    :goto_15
    if-ge v4, v2, :cond_20

    .line 1250
    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1251
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1252
    .local v6, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iput v4, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    .line 1253
    iget-boolean v11, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_1e

    iget v11, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_1f

    .line 1255
    invoke-virtual {v1, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v11

    .line 1256
    .local v11, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v11, :cond_1f

    .line 1257
    iget v13, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    iput v13, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    .line 1258
    iget v13, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iput v13, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->position:I

    .line 1258
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v11    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_16

    .line 1249
    :cond_1e
    const/4 v12, 0x0

    :cond_1f
    :goto_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1262
    .end local v4    # "i":I
    :cond_20
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 1264
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v4

    .line 1266
    .local v4, "currentFocused":Landroid/view/View;
    if-eqz v4, :cond_21

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v12

    goto :goto_17

    :cond_21
    const/4 v12, 0x0

    :goto_17
    move-object v5, v12

    .line 1267
    .local v5, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v5, :cond_22

    iget v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v11, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v6, v11, :cond_24

    .line 1268
    :cond_22
    const/16 v16, 0x0

    .line 1268
    .local v16, "i":I
    :goto_18
    move/from16 v6, v16

    .line 1268
    .end local v16    # "i":I
    .local v6, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_24

    .line 1269
    invoke-virtual {v1, v6}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1270
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v1, v11}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v5

    .line 1271
    if-eqz v5, :cond_23

    iget v12, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v13, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v12, v13, :cond_23

    .line 1272
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/view/View;->requestFocus(I)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 1273
    goto :goto_19

    .line 1268
    .end local v11    # "child":Landroid/view/View;
    :cond_23
    add-int/lit8 v16, v6, 0x1

    .line 1268
    .end local v6    # "i":I
    .restart local v16    # "i":I
    goto :goto_18

    .line 1279
    .end local v4    # "currentFocused":Landroid/view/View;
    .end local v5    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v16    # "i":I
    :cond_24
    :goto_19
    return-void
.end method

.method public removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 594
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 597
    :cond_0
    return-void
.end method

.method public removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 736
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 739
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1504
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1505
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1507
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1509
    :goto_0
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 8
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 506
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 508
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 509
    const/4 v0, 0x0

    .line 509
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 510
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 511
    .local v3, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v5, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v6, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 509
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 514
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->removeNonDecorViews()V

    .line 516
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 517
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 520
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 521
    .local v0, "oldAdapter":Landroid/support/v4/view/PagerAdapter;
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 522
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 524
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_5

    .line 525
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    if-nez v3, :cond_2

    .line 526
    new-instance v3, Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-direct {v3, p0}, Landroid/support/v4/view/ViewPager$PagerObserver;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    .line 528
    :cond_2
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 529
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 530
    iget-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 531
    .local v3, "wasFirstLayout":Z
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 532
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 533
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_3

    .line 534
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 535
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v5, v2, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 536
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 537
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 538
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 539
    :cond_3
    if-nez v3, :cond_4

    .line 540
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    goto :goto_1

    .line 542
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 547
    .end local v3    # "wasFirstLayout":Z
    :cond_5
    :goto_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 548
    const/4 v1, 0x0

    .line 548
    .local v1, "i":I
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 548
    .local v2, "count":I
    :goto_2
    if-ge v1, v2, :cond_6

    .line 549
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    invoke-interface {v3, p0, v0, p1}, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 552
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 612
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 613
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 623
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 624
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .line 631
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 632
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .line 635
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_4

    .line 639
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 641
    return-void

    .line 644
    :cond_1
    const/4 v0, 0x1

    if-gez p1, :cond_2

    .line 645
    const/4 p1, 0x0

    goto :goto_0

    .line 646
    :cond_2
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 647
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    .line 649
    :cond_3
    :goto_0
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 650
    .local v2, "pageLimit":I
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_4

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_5

    .line 654
    :cond_4
    const/4 v3, 0x0

    .line 654
    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 655
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    iput-boolean v0, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 654
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 658
    .end local v3    # "i":I
    :cond_5
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v3, p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 660
    .local v0, "dispatchSelected":Z
    :goto_2
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_8

    .line 663
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 664
    if-eqz v0, :cond_7

    .line 665
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    .line 667
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_3

    .line 669
    :cond_8
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->populate(I)V

    .line 670
    invoke-direct {p0, p1, p2, p4, v0}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    .line 672
    :goto_3
    return-void

    .line 636
    .end local v0    # "dispatchSelected":Z
    .end local v2    # "pageLimit":I
    :cond_9
    :goto_4
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 637
    return-void
.end method

.method setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 815
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 816
    .local v0, "oldListener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 817
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .line 849
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 850
    const-string v1, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " too small; defaulting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/4 p1, 0x1

    .line 854
    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 855
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 856
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 858
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 709
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 710
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .line 869
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 870
    .local v0, "oldMargin":I
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 872
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 873
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 875
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 876
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 905
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 906
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 893
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 894
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    .line 895
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 896
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 897
    return-void
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V
    .locals 1
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Landroid/support/v4/view/ViewPager$PageTransformer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 769
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;I)V

    .line 770
    return-void
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;I)V
    .locals 4
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Landroid/support/v4/view/ViewPager$PageTransformer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "pageLayerType"    # I

    .line 787
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 788
    .local v2, "hasTransformer":Z
    :goto_0
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 789
    .local v3, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    .line 790
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    .line 791
    if-eqz v2, :cond_4

    .line 792
    if-eqz p1, :cond_3

    const/4 v1, 0x2

    nop

    :cond_3
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    .line 793
    iput p3, p0, Landroid/support/v4/view/ViewPager;->mPageTransformerLayerType:I

    goto :goto_3

    .line 795
    :cond_4
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    .line 797
    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 798
    :cond_5
    return-void
.end method

.method setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 488
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 489
    return-void

    .line 492
    :cond_0
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 493
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v0, :cond_2

    .line 495
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->enableLayers(Z)V

    .line 497
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnScrollStateChanged(I)V

    .line 498
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 939
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    .line 940
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 18
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    move-object/from16 v0, p0

    .line 950
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 952
    invoke-direct {v0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 953
    return-void

    .line 957
    :cond_0
    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 958
    .local v1, "wasScrolling":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 963
    iget-boolean v4, v0, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    goto :goto_1

    :cond_2
    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getStartX()I

    move-result v4

    .line 965
    .local v4, "sx":I
    :goto_1
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 966
    invoke-direct {v0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    .line 968
    .end local v4    # "sx":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    .line 970
    .restart local v4    # "sx":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v11

    .line 971
    .local v11, "sy":I
    sub-int v12, p1, v4

    .line 972
    .local v12, "dx":I
    sub-int v13, p2, v11

    .line 973
    .local v13, "dy":I
    if-nez v12, :cond_4

    if-nez v13, :cond_4

    .line 974
    invoke-direct {v0, v2}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 975
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 976
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 977
    return-void

    .line 980
    :cond_4
    invoke-direct {v0, v3}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 981
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 983
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v3

    .line 984
    .local v3, "width":I
    div-int/lit8 v10, v3, 0x2

    .line 985
    .local v10, "halfWidth":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    int-to-float v7, v3

    div-float/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 986
    .local v9, "distanceRatio":F
    int-to-float v5, v10

    int-to-float v7, v10

    .line 987
    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float v7, v7, v8

    add-float v14, v5, v7

    .line 990
    .local v14, "distance":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 991
    .end local p3    # "velocity":I
    .local v8, "velocity":I
    if-lez v8, :cond_5

    .line 992
    const/high16 v5, 0x447a0000    # 1000.0f

    int-to-float v6, v8

    div-float v6, v14, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float v6, v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    .line 992
    .local v5, "duration":I
    goto :goto_3

    .line 994
    .end local v5    # "duration":I
    :cond_5
    int-to-float v5, v3

    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v2, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v7, v2}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v2

    mul-float v5, v5, v2

    .line 995
    .local v5, "pageWidth":F
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget v7, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    div-float/2addr v2, v7

    .line 996
    .local v2, "pageDelta":F
    add-float/2addr v6, v2

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v6, v6, v7

    float-to-int v5, v6

    .line 996
    .end local v2    # "pageDelta":F
    .local v5, "duration":I
    :goto_3
    move v2, v5

    .line 998
    .end local v5    # "duration":I
    .local v2, "duration":I
    const/16 v5, 0x258

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1002
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    .line 1003
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move v6, v4

    move v7, v11

    move v15, v8

    move v8, v12

    .line 1003
    .end local v8    # "velocity":I
    .local v15, "velocity":I
    move/from16 v16, v9

    move v9, v13

    .line 1003
    .end local v9    # "distanceRatio":F
    .local v16, "distanceRatio":F
    move/from16 v17, v10

    move v10, v2

    .line 1003
    .end local v10    # "halfWidth":I
    .local v17, "halfWidth":I
    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1004
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1005
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 910
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
